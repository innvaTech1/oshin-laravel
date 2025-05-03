<?php

namespace App\Exports;

use App\Models\Order;
use App\Models\Setting;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class OrdersExport implements FromCollection, WithHeadings, WithMapping
{
    protected $currencyIcon;

    public function __construct()
    {
        $setting = Setting::first();
        $this->currencyIcon = $setting ? $setting->currency_icon : '';
    }

    public function collection()
    {
        return Order::with('user', 'orderAddress')->orderBy('id', 'desc')->get();
    }

    public function headings(): array
    {
        return [
            'SN',
            'Customer',
            'Order ID',
            'Date',
            'Quantity',
            'Amount',
            'Order Status',
            'Payment Status',
            'Payment Method'
        ];
    }

    public function map($order): array
    {
        static $index = 0;
        $index++;
        return [
            $index,
            $order->user->name ?? $order->orderAddress->billing_name,
            $order->order_id,
            $order->created_at->format('d F, Y'),
            $order->product_qty,
            $this->currencyIcon . $order->total_amount,
            $this->getOrderStatus($order->order_status),
            $order->payment_status == 1 ? 'Success' : 'Pending',
            $order->payment_method
        ];
    }

    private function getOrderStatus($status)
    {
        switch ($status) {
            case 1:
                return 'Pregress';
            case 2:
                return 'Delivered';
            case 3:
                return 'Completed';
            case 4:
                return 'Declined';
            default:
                return 'Pending';
        }
    }
}
