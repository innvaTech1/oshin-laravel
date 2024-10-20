<?php

namespace App\Http\Controllers\Admin;

use Exception;
use App\Models\City;
use App\Models\Brand;
use App\Models\Product;
use App\Models\Setting;
use App\Models\Category;
use App\Models\Wishlist;
use App\Models\ProductTax;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use App\Models\OrderProduct;
use App\Models\ReturnPolicy;
use Illuminate\Http\Request;
use App\Models\ChildCategory;
use App\Models\ProductReport;
use App\Models\ProductReview;
use App\Exports\ProductExport;
use App\Imports\ProductImport;
use App\Models\ProductGallery;
use App\Models\ProductVariant;
use App\Models\CampaignProduct;
use App\Models\ProductVariantItem;
use App\Models\OrderProductVariant;
use App\Http\Controllers\Controller;
use App\Models\ProductSpecification;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\ProductSpecificationKey;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $products = Product::with('category')->where(['vendor_id' => 0])->orderBy('id', 'desc')->get();
        $orderProducts = OrderProduct::all();
        $setting = Setting::first();
        return view('admin.product', compact('products', 'orderProducts', 'setting'));
    }

    public function sellerProduct()
    {
        $products = Product::with('category')->where('vendor_id', '!=', 0)->where('status', 1)->get();
        $orderProducts = OrderProduct::all();
        $setting = Setting::first();
        return view('admin.seller_product', compact('products', 'orderProducts', 'setting'));
    }

    public function sellerPendingProduct()
    {
        $products = Product::with('category')->where('vendor_id', '!=', 0)->where('status', 0)->get();
        $orderProducts = OrderProduct::all();
        $setting = Setting::first();
        return view('admin.seller_product', compact('products', 'orderProducts', 'setting'));
    }

    public function stockoutProduct()
    {
        $products = Product::with('category', 'seller', 'brand')->where('vendor_id', 0)->where('qty', 0)->get();
        $orderProducts = OrderProduct::all();
        $setting = Setting::first();
        $frontend_url = $setting->frontend_url;
        $frontend_url = $frontend_url . '/single-product?slug=';

        return view('admin.stockout_product', compact('products', 'orderProducts', 'setting', 'frontend_url'));
    }

    public function create()
    {
        $productType = request('product_type');

        if ($productType) {
            session()->put('product_type', $productType);
        }

        if (!$productType || !session('product_type')) {
            return view('admin.products.product-type');
        }

        $categories = Category::all();
        $brands = Brand::all();
        $productTaxs = ProductTax::where('status', 1)->get();
        $retrunPolicies = ReturnPolicy::where('status', 1)->get();
        $specificationKeys = ProductSpecificationKey::all();
        $cities = City::all();
        return view('admin.create_product', compact('categories', 'brands', 'productTaxs', 'retrunPolicies', 'specificationKeys', 'cities'));
    }

    public function store(Request $request)
    {
        if ($request->video_link) {
            $valid = preg_match("/^(https?\:\/\/)?(www\.)?(youtube\.com|youtu\.be)\/watch\?v\=\w+$/", $request->video_link);

            if (!$valid) {
                $notification = trans('admin_validation.Please provide your valid youtube url');
                $notification = array('messege' => $notification, 'alert-type' => 'error');
                return redirect()->back()->with($notification);
            }
        }

        $rules = [
            'short_name' => 'required',
            'name' => 'required',
            'slug' => 'required|unique:products',
            'thumb_image' => 'required',
            'category' => 'required',
            'short_description' => 'required',
            'long_description' => 'required',
            'price' => 'required|numeric',
            'status' => 'required',
            'weight' => 'required',
            'quantity' => 'required|numeric',
        ];

        if ($request->is_pre_order) {
            $rules['release_date'] = 'required|date';
            $rules['max_product'] = 'required';
        }
        if ($request->is_partial) {
            $rules['partial_amount'] = 'required';
        }


        $customMessages = [
            'short_name.required' => trans('Short name is required'),
            'short_name.unique' => trans('Short name is required'),
            'name.required' => trans('Name is required'),
            'name.unique' => trans('Name is required'),
            'slug.required' => trans('Slug is required'),
            'slug.unique' => trans('Slug already exist'),
            'category.required' => trans('Category is required'),
            'thumb_image.required' => trans('thumbnail is required'),
            'short_description.required' => trans('Short description is required'),
            'long_description.required' => trans('Long description is required'),
            'price.required' => trans('Price is required'),
            'status.required' => trans('Status is required'),
            'quantity.required' => trans('Quantity is required'),
            'weight.required' => trans('Weight is required'),
            'release_date.required' => __('Release Date is Required'),
            'release_date.date' => __('Release Date must be a Date'),
            'max_product.required' => __('Pre order Quantity is Required'),
            'partial_amount.required' => __('Partial Amount Quantity is Required'),
        ];

        if (session('product_type') != null && session('product_type') == 'Digital') {
            $rules['type_check'] = 'required';
            $rules['file'] = 'required_if:type_check,1';
            $rules['link'] = 'required_if:type_check,2';

            $customMessages['type_check.required'] = trans('Upload Type is required');
            $customMessages['file.required_if'] = trans('File is required');
            $customMessages['link.required_if'] = trans('Link is required');
        }
        $this->validate($request, $rules, $customMessages);

        $product = new Product();
        if ($request->thumb_image) {
            $image_name = file_upload($request->thumb_image, null, 'uploads/custom-images/', Str::slug($request->name));
            $product->thumb_image = $image_name;
        }

        $fileName = '';
        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $fileName = file_upload($file, null, 'uploads/custom-files/', Str::slug($request->name));
            $product->link = $fileName;
        } else {
            $product->link = $request->link;
        }

        $product->short_name = $request->short_name;
        $product->name = $request->name;
        $product->slug = $request->slug;
        $product->category_id = $request->category;
        $product->sub_category_id = $request->sub_category ? $request->sub_category : 0;
        $product->child_category_id = $request->child_category ? $request->child_category : 0;
        $product->brand_id = $request->brand ? $request->brand : 0;
        $product->sku = $request->sku;
        $product->price = $request->price;
        $product->offer_price = $request->offer_price;
        $product->qty = $request->quantity ? $request->quantity : 0;
        $product->short_description = $request->short_description;
        $product->long_description = $request->long_description;
        $product->tags = $request->tags;
        $product->city_id = $request->city_id;
        $product->status = $request->status;
        $product->weight = $request->weight;
        $product->is_undefine = 1;
        $product->is_specification = $request->is_specification ? 1 : 0;
        $product->seo_title = $request->seo_title ? $request->seo_title : $request->name;
        $product->seo_description = $request->seo_description ? $request->seo_description : $request->name;
        $product->is_top = $request->top_product ? 1 : 0;
        $product->new_product = $request->new_arrival ? 1 : 0;
        $product->is_best = $request->best_product ? 1 : 0;
        $product->is_featured = $request->is_featured ? 1 : 0;
        $product->type_check = $request->type_check;
        $product->type = session('product_type');

        $product->is_pre_order = $request->is_pre_order ? 1 : 0;
        $product->is_partial = $request->is_partial ? 1 : 0;

        if ($request->is_pre_order) {
            $product->release_date = now()->parse($request->release_date);
            $product->max_product = $request->max_product;
        }
        if ($request->is_partial) {
            $product->partial_amount = $request->partial_amount;
            $product->partial_type = $request->partial_type;
        }
        $product->save();

        if ($request->is_specification) {
            $exist_specifications = [];
            if ($request->keys) {
                foreach ($request->keys as $index => $key) {
                    if ($key) {
                        if ($request->specifications[$index]) {
                            if (!in_array($key, $exist_specifications)) {
                                $productSpecification = new ProductSpecification();
                                $productSpecification->product_id = $product->id;
                                $productSpecification->product_specification_key_id = $key;
                                $productSpecification->specification = $request->specifications[$index];
                                $productSpecification->save();
                            }
                            $exist_specifications[] = $key;
                        }
                    }
                }
            }
        }

        session()->forget('product_type');
        $notification = trans('admin_validation.Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product.index')->with($notification);
    }

    public function show(Product $product)
    {
        //
    }

    public function edit($id)
    {
        $product = Product::find($id);
        $categories = Category::all();
        $subCategories = SubCategory::all();
        $childCategories = ChildCategory::all();
        $brands = Brand::all();
        $productTaxs = ProductTax::where('status', 1)->get();
        $retrunPolicies = ReturnPolicy::where('status', 1)->get();
        $specificationKeys = ProductSpecificationKey::all();
        $productSpecifications = ProductSpecification::where('product_id', $product->id)->get();
        $cities = City::all();
        $tagArray = json_decode($product->tags);
        $tags = '';
        if ($product->tags) {
            foreach ($tagArray as $index => $tag) {
                $tags .= $tag->value . ',';
            }
        }

        return view('admin.edit_product', compact('categories', 'brands', 'productTaxs', 'retrunPolicies', 'specificationKeys', 'product', 'subCategories', 'childCategories', 'tags', 'productSpecifications', 'cities'));
    }

    public function update(Request $request, $id)
    {
        if ($request->video_link) {
            $valid = preg_match("/^(https?\:\/\/)?(www\.)?(youtube\.com|youtu\.be)\/watch\?v\=\w+$/", $request->video_link);

            if (!$valid) {
                $notification = trans('admin_validation.Please provide your valid youtube url');
                $notification = array('messege' => $notification, 'alert-type' => 'error');
                return redirect()->back()->with($notification);
            }
        }
        $product = Product::find($id);

        $rules = [
            'short_name' => 'required',
            'name' => 'required',
            'slug' => 'required|unique:products,slug,' . $product->id,
            'category' => 'required',
            'short_description' => 'required',
            'long_description' => 'required',
            'price' => 'required|numeric',
            'status' => 'required',
            'weight' => 'required',
            'quantity' => 'required|numeric',
        ];

        if ($request->is_pre_order) {
            $rules['release_date'] = 'required|date';
            $rules['max_product'] = 'required';
        }
        if ($request->is_partial) {
            $rules['partial_amount'] = 'required';
        }
        $customMessages = [
            'short_name.required' => trans('Short name is required'),
            'short_name.unique' => trans('Short name is required'),
            'name.required' => trans('Name is required'),
            'name.unique' => trans('Name is required'),
            'slug.required' => trans('Slug is required'),
            'slug.unique' => trans('Slug already exist'),
            'category.required' => trans('Category is required'),
            'thumb_image.required' => trans('thumbnail is required'),
            'short_description.required' => trans('Short description is required'),
            'long_description.required' => trans('Long description is required'),
            'price.required' => trans('Price is required'),
            'status.required' => trans('Status is required'),
            'quantity.required' => trans('Quantity is required'),
            'weight.required' => trans('Weight is required'),
            'release_date.required' => __('Release Date is Required'),
            'release_date.date' => __('Release Date must be a Date'),
            'max_product.required' => __('Pre order Quantity is Required'),
            'partial_amount.required' => __('Partial Amount Quantity is Required'),
        ];



        $this->validate($request, $rules, $customMessages);

        if ($request->thumb_image) {
            $old_thumbnail = $product->thumb_image;
            $image_name = file_upload($request->thumb_image, $old_thumbnail, 'uploads/custom-images/');
            $product->thumb_image = $image_name;
            $product->save();
        }

        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $fileName = file_upload($file, $product->link, 'uploads/custom-files/', Str::slug($request->name));
            $product->link = $fileName;
        } else {
            $product->link = $request->link;
        }


        $product->short_name = $request->short_name;
        $product->name = $request->name;
        $product->slug = $request->slug;
        $product->category_id = $request->category;
        $product->sub_category_id = $request->sub_category ? $request->sub_category : 0;
        $product->child_category_id = $request->child_category ? $request->child_category : 0;
        $product->brand_id = $request->brand ? $request->brand : 0;
        $product->qty = $request->quantity ? $request->quantity : 0;
        $product->sold_qty = 0;
        $product->sku = $request->sku;
        $product->price = $request->price;
        $product->offer_price = $request->offer_price;
        $product->short_description = $request->short_description;
        $product->long_description = $request->long_description;
        $product->tags = $request->tags;
        $product->status = $request->status;
        $product->city_id = $request->city_id;
        $product->weight = $request->weight;
        $product->is_specification = $request->is_specification ? 1 : 0;
        $product->seo_title = $request->seo_title ? $request->seo_title : $request->name;
        $product->seo_description = $request->seo_description ? $request->seo_description : $request->name;
        $product->is_top = $request->top_product ? 1 : 0;
        $product->new_product = $request->new_arrival ? 1 : 0;
        $product->is_best = $request->best_product ? 1 : 0;
        $product->is_featured = $request->is_featured ? 1 : 0;
        $product->type_check = $request->type_check;
        $product->is_pre_order = $request->is_pre_order ? 1 : 0;
        $product->is_partial = $request->is_partial ? 1 : 0;

        if ($request->is_pre_order) {
            $product->release_date = now()->parse($request->release_date);
            $product->max_product = $request->max_product;
        }
        if ($request->is_partial) {
            $product->partial_amount = $request->partial_amount;
            $product->partial_type = $request->partial_type;
        }

        $product->save();

        $exist_specifications = [];
        if ($request->keys) {
            foreach ($request->keys as $index => $key) {
                if ($key) {
                    if ($request->specifications[$index]) {
                        if (!in_array($key, $exist_specifications)) {
                            $existSroductSpecification = ProductSpecification::where(['product_id' => $product->id, 'product_specification_key_id' => $key])->first();
                            if ($existSroductSpecification) {
                                $existSroductSpecification->specification = $request->specifications[$index];
                                $existSroductSpecification->save();
                            } else {
                                $productSpecification = new ProductSpecification();
                                $productSpecification->product_id = $product->id;
                                $productSpecification->product_specification_key_id = $key;
                                $productSpecification->specification = $request->specifications[$index];
                                $productSpecification->save();
                            }
                        }
                        $exist_specifications[] = $key;
                    }
                }
            }
        }
        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product.index')->with($notification);
    }

    public function destroy($id)
    {
        $product = Product::find($id);
        $gallery = $product->gallery;
        $old_thumbnail = $product->thumb_image;
        $product->delete();
        file_delete($old_thumbnail);
        foreach ($gallery as $image) {
            $old_image = $image->image;
            $image->delete();
            file_delete($old_image);
        }
        ProductVariant::where('product_id', $id)->delete();
        ProductVariantItem::where('product_id', $id)->delete();
        CampaignProduct::where('product_id', $id)->delete();
        ProductReport::where('product_id', $id)->delete();
        ProductReview::where('product_id', $id)->delete();
        ProductSpecification::where('product_id', $id)->delete();
        Wishlist::where('product_id', $id)->delete();

        $notification = trans('admin_validation.Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->back()->with($notification);
    }

    public function changeStatus($id)
    {
        $product = Product::find($id);
        if ($product->status == 1) {
            $product->status = 0;
            $product->save();
            $message = trans('admin_validation.InActive Successfully');
        } else {
            $product->status = 1;
            $product->save();
            $message = trans('admin_validation.Active Successfully');
        }
        return response()->json($message);
    }

    public function removedProductExistSpecification($id)
    {
        $productSpecification = ProductSpecification::find($id);
        $productSpecification->delete();
        $message = trans('admin_validation.Removed Successfully');
        return response()->json($message);
    }

    public function productHighlight($id)
    {
        $product = Product::find($id);
        return view('admin.product_highlight', compact('product'));
    }

    public function productHighlightUpdate(Request $request, $id)
    {

        $product = Product::find($id);
        if ($request->product_type == 1) {
            $product->is_undefine = 1;
            $product->new_product = 0;
            $product->is_featured = 0;
            $product->is_best = 0;
            $product->is_top = 0;
            $product->is_flash_deal = 0;
            $product->save();
        } else if ($request->product_type == 2) {
            $product->is_undefine = 0;
            $product->new_product = 1;
            $product->is_featured = 0;
            $product->is_best = 0;
            $product->is_top = 0;
            $product->is_flash_deal = 0;
            $product->save();
        } else if ($request->product_type == 3) {
            $product->is_undefine = 0;
            $product->new_product = 0;
            $product->is_featured = 1;
            $product->is_best = 0;
            $product->is_top = 0;
            $product->is_flash_deal = 0;
            $product->save();
        } else if ($request->product_type == 4) {
            $product->is_undefine = 0;
            $product->new_product = 0;
            $product->is_featured = 0;
            $product->is_best = 0;
            $product->is_top = 1;
            $product->is_flash_deal = 0;
            $product->save();
        } else if ($request->product_type == 5) {
            $product->is_undefine = 0;
            $product->new_product = 0;
            $product->is_featured = 0;
            $product->is_best = 1;
            $product->is_top = 0;
            $product->is_flash_deal = 0;
            $product->save();
        } else if ($request->product_type == 6) {
            $rules = [
                'date' => 'required'
            ];
            $this->validate($request, $rules);
            $product->is_flash_deal = 1;
            $product->flash_deal_date = $request->date;
            $product->is_undefine = 0;
            $product->new_product = 0;
            $product->is_featured = 0;
            $product->is_best = 0;
            $product->is_top = 0;
            $product->save();
        }

        $notification = trans('admin_validation.Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('admin.product.index')->with($notification);
    }

    public function product_import_page()
    {
        return view('admin.product_import_page');
    }

    public function product_export()
    {
        $is_dummy = false;
        return Excel::download(new ProductExport($is_dummy), 'products.xlsx');
    }


    public function demo_product_export()
    {
        $is_dummy = true;
        return Excel::download(new ProductExport($is_dummy), 'products.xlsx');
    }



    public function product_import(Request $request)
    {
        try {
            Excel::import(new ProductImport, $request->file('import_file'));

            $notification = trans('Uploaded Successfully');
            $notification = array('messege' => $notification, 'alert-type' => 'success');
            return redirect()->back()->with($notification);
        } catch (Exception $ex) {
            $notification = trans('Please follow the instruction and input the value carefully');
            $notification = array('messege' => $notification, 'alert-type' => 'error');
            return redirect()->back()->with($notification);
        }
    }
}
