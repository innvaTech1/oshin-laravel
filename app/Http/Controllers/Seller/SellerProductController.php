<?php

namespace App\Http\Controllers\Seller;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\ChildCategory;
use App\Models\ProductGallery;
use App\Models\Brand;
use App\Models\ProductSpecificationKey;
use App\Models\ProductSpecification;
use App\Models\User;
use App\Models\Vendor;
use App\Models\OrderProduct;
use App\Models\ProductVariant;
use App\Models\ProductVariantItem;
use App\Models\ProductReport;
use App\Models\ProductReview;
use App\Models\Wishlist;
use App\Models\Setting;
use App\Models\ShoppingCart;
use App\Models\FlashSaleProduct;
use App\Models\ShoppingCartVariant;
use App\Models\CompareProduct;

use App\Exports\ProductExport;
use App\Imports\ProductImport;
use App\Models\City;
use App\Models\ProductTax;
use App\Models\ReturnPolicy;
use Maatwebsite\Excel\Facades\Excel;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class SellerProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:web');
    }

    public function index()
    {
        $seller = Auth::guard('web')->user()->seller;
        $products = Product::with('category', 'seller', 'brand')->orderBy('id', 'desc')->where('approve_by_admin', 1)->where('vendor_id', $seller->id)->orderBy('id', 'desc')->get();
        $orderProducts = OrderProduct::all();
        $setting = Setting::first();
        return view('seller.product', compact('products', 'orderProducts', 'setting'));
    }

    public function pendingProduct()
    {
        $seller = Auth::guard('web')->user()->seller;
        $products = Product::with('category', 'seller', 'brand')->orderBy('id', 'desc')->where('approve_by_admin', 0)->where('vendor_id', $seller->id)->orderBy('id', 'desc')->get();
        $orderProducts = OrderProduct::all();
        $setting = Setting::first();
        return view('seller.pending_product', compact('products', 'orderProducts', 'setting'));
    }

    public function stockoutProduct()
    {
        $seller = Auth::guard('web')->user()->seller;
        $products = Product::with('category', 'seller', 'brand')->orderBy('id', 'desc')->where('qty', 0)->where('vendor_id', $seller->id)->get();
        $setting = Setting::first();

        return view('seller.stockout_product', compact('products', 'setting'));
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
        $cities = City::orderBy('name', 'asc')->get();
        return view('seller.create_product', compact('categories', 'brands', 'productTaxs', 'retrunPolicies', 'specificationKeys', 'cities'));
    }


    public function getSubcategoryByCategory($id)
    {
        $subCategories = SubCategory::where('category_id', $id)->get();
        $response = '<option value="">' . trans('Select Sub Category') . '</option>';
        foreach ($subCategories as $subCategory) {
            $response .= "<option value=" . $subCategory->id . ">" . $subCategory->name . "</option>";
        }
        return response()->json(['subCategories' => $response]);
    }

    public function getChildcategoryBySubCategory($id)
    {
        $childCategories = ChildCategory::where('sub_category_id', $id)->get();
        $response = '<option value="">' . trans('Select Child Category') . '</option>';
        foreach ($childCategories as $childCategory) {
            $response .= "<option value=" . $childCategory->id . ">" . $childCategory->name . "</option>";
        }
        return response()->json(['childCategories' => $response]);
    }

    public function store(Request $request)
    {

        $rules = [
            'name' => 'required',
            'slug' => 'required|unique:products',
            'thumb_image' => 'required',
            'category' => 'required',
            'short_description' => 'required',
            'long_description' => 'required',
            'price' => 'required|numeric',
            'weight' => 'required',
            'quantity' => 'required|numeric',
        ];
        $customMessages = [
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
        ];
        $this->validate($request, $rules, $customMessages);


        $seller = Auth::guard('web')->user()->seller;
        $product = new Product();
        if ($request->thumb_image) {

            $image_name = file_upload($request->thumb_image, null, 'uploads/custom-images/');
            $product->thumb_image = $image_name;
        }

        $product->vendor_id = $seller->id
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
        $product->delivery_id = $request->delivery_id;

        $product->status = 1;
        $product->weight = $request->weight;
        $product->is_undefine = 1;
        $product->is_specification = $request->is_specification ? 1 : 0;
        $product->seo_title = $request->seo_title ? $request->seo_title : $request->name;
        $product->seo_description = $request->seo_description ? $request->seo_description : $request->name;
        $product->is_top = $request->top_product ? 1 : 0;
        $product->new_product = $request->new_arrival ? 1 : 0;
        $product->is_best = $request->best_product ? 1 : 0;
        $product->is_featured = $request->is_featured ? 1 : 0;

        $product->tax_id = $request->tax_id;
        $product->is_return = $request->is_return;
        $product->return_policy_id = $request->return_policy_id;
        $product->warranty_policy_id = $request->warranty_policy_id;
        $product->warranty_times = $request->warranty_times;
        $product->measurement = $request->measurement;
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

        $notification = trans('Created Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('seller.product.index')->with($notification);
    }

    public function show($id)
    {
        $product = Product::with('category', 'brand', 'gallery', 'specifications', 'reviews', 'variants', 'variantItems')->find($id);
        if ($product->vendor_id == 0) {
            $notification = 'Something went wrong';
            return response()->json(['error' => $notification], 403);
        }

        return response()->json(['product' => $product], 200);
    }

    public function edit($id)
    {
        $product = Product::with('category', 'brand', 'gallery', 'variants', 'variantItems')->find($id);
        if ($product->vendor_id == 0) {
            $notification = 'Something went wrong';
            return response()->json(['error' => $notification], 403);
        }
        $categories = Category::all();
        $subCategories = SubCategory::where('category_id', $product->category_id)->get();
        $childCategories = ChildCategory::where('sub_category_id', $product->sub_category_id)->get();
        $brands = Brand::all();
        $specificationKeys = ProductSpecificationKey::all();
        $productSpecifications = ProductSpecification::where('product_id', $product->id)->get();
        $cities = City::orderBy('name', 'asc')->get();

        return view('seller.edit_product', compact('categories', 'brands', 'specificationKeys', 'product', 'subCategories', 'childCategories', 'productSpecifications', 'cities'));
    }

    public function update(Request $request, $id)
    {


        $product = Product::find($id);

        $rules = [
            'name' => 'required',
            'slug' => 'required|unique:products,slug,' . $product->id,
            'category' => 'required',
            'short_description' => 'required',
            'long_description' => 'required',
            'price' => 'required|numeric',
            'weight' => 'required',
            'quantity' => 'required|numeric',
        ];
        $customMessages = [
            'name.required' => trans('Name is required'),
            'name.unique' => trans('Name is required'),
            'slug.required' => trans('Slug is required'),
            'slug.unique' => trans('Slug already exist'),
            'category.required' => trans('Category is required'),
            'thumb_image.required' => trans('thumbnail is required'),
            'banner_image.required' => trans('Banner is required'),
            'short_description.required' => trans('Short description is required'),
            'long_description.required' => trans('Long description is required'),
            'brand.required' => trans('Brand is required'),
            'price.required' => trans('Price is required'),
            'quantity.required' => trans('Quantity is required'),
            'status.required' => trans('Status is required'),
            'weight.required' => trans('Weight is required'),
        ];
        $this->validate($request, $rules, $customMessages);

        if ($request->thumb_image) {
            $old_thumbnail = $product->thumb_image;
            $image_name = file_upload($request->thumb_image, $old_thumbnail, 'uploads/custom-images/');

            $product->thumb_image = $image_name;
            $product->save();
        }

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

        $product->weight = $request->weight;
        $product->is_specification = $request->is_specification ? 1 : 0;
        $product->seo_title = $request->seo_title ? $request->seo_title : $request->name;
        $product->seo_description = $request->seo_description ? $request->seo_description : $request->name;
        $product->is_top = $request->top_product ? 1 : 0;
        $product->new_product = $request->new_arrival ? 1 : 0;
        $product->is_best = $request->best_product ? 1 : 0;
        $product->is_featured = $request->is_featured ? 1 : 0;
        if ($product->approve_by_admin == 1) {
            $product->status = $request->status;
        }
        $product->save();
        $notification = trans('Update Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('seller.product.index')->with($notification);
    }

    public function destroy($id)
    {
        $product = Product::find($id);
        $gallery = $product->gallery;
        $old_thumbnail = $product->thumb_image;
        $product->delete();
        if ($old_thumbnail) {
            if (File::exists(public_path() . '/' . $old_thumbnail)) unlink(public_path() . '/' . $old_thumbnail);
        }
        foreach ($gallery as $image) {
            $old_image = $image->image;
            $image->delete();
            if ($old_image) {
                if (File::exists(public_path() . '/' . $old_image)) unlink(public_path() . '/' . $old_image);
            }
        }
        ProductVariant::where('product_id', $id)->delete();
        ProductVariantItem::where('product_id', $id)->delete();
        ProductReport::where('product_id', $id)->delete();
        FlashSaleProduct::where('product_id', $id)->delete();
        ProductReview::where('product_id', $id)->delete();
        ProductSpecification::where('product_id', $id)->delete();
        Wishlist::where('product_id', $id)->delete();

        $cartProducts = ShoppingCart::where('product_id', $id)->get();
        foreach ($cartProducts as $cartProduct) {
            ShoppingCartVariant::where('shopping_cart_id', $cartProduct->id)->delete();
            $cartProduct->delete();
        }
        CompareProduct::where('product_id', $id)->delete();

        $notification = trans('Delete Successfully');
        $notification = array('messege' => $notification, 'alert-type' => 'success');
        return redirect()->route('seller.product.index')->with($notification);
    }

    public function changeStatus($id)
    {
        $product = Product::find($id);
        if ($product->status == 1) {
            $product->status = 0;
            $product->save();
            $message = trans('Inactive Successfully');
        } else {
            $product->status = 1;
            $product->save();
            $message = trans('Active Successfully');
        }
        return response()->json($message);
    }

    public function removedProductExistSpecification($id)
    {
        $productSpecification = ProductSpecification::find($id);
        $productSpecification->delete();
        $message = trans('Removed Successfully');
        return response()->json($message);
    }


    public function product_import_page()
    {
        $seller = Auth::guard('web')->user()->seller;
        return view('seller.product_import_page')->with(['seller' => $seller]);
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
