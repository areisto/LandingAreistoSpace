<?php

namespace App\Http\Controllers\Site;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use App\Models\Invoice;
use Illuminate\Support\Str;
class PaymentController extends Controller
{
    public function redirectToCrosspay(Request $request)
    {
        $request->validate([
            'total' => 'required|numeric',
            'plan' => 'required|string',
            'quantity' => 'required|integer|min:1',
        ]);

        $total = $request->input('total');
        $plan = $request->input('plan');
        $quantity = $request->input('quantity');

        $invoice_id = strtoupper(Str::uuid()->toString());

        Invoice::create([
            'invoice_id' => $invoice_id,
            'plan'       => $plan,
            'quantity'   => $quantity,
            'total'      => $total,
            'status'     => 'pending',
        ]);

        $inv_details = [
            "inv_items" => [
                [
                    "name"       => "Support Plan: $plan",
                    "quntity"    => $quantity,
                    "unitPrice"  => number_format($total / $quantity, 2, '.', ''),
                    "totalPrice" => number_format($total, 2, '.', ''),
                    "currency"   => "USD"
                ]
            ],
            "inv_info" => [
                ["row_title" => "Vat", "row_value" => "0"],
                ["row_title" => "Delevery", "row_value" => "0"],
                ["row_title" => "Promo Code", "row_value" => 0],
                ["row_title" => "Discounts", "row_value" => 0],
            ],
            "user" => [
                "userName" => "unknown"
            ]
        ];

        $api_data   = env('CROSSPAY_API_DATA');
        $api_key    = env('CROSSPAY_API_KEY');
        $currency     = 'USD';
        $return_url = urlencode(url('/crosspay/callback') . '?invoice_id=' . $invoice_id);
        $email        = urlencode('unknown@unknown.com');
        $mobile       = urlencode('unknown');
        $name         = urlencode('unknown');
        $endpoint   = env('CROSSPAY_ENDPOINT');
        $inv_details_encoded = urlencode(json_encode($inv_details));

        $url = "{$endpoint}"
            . "?api_data={$api_data}"
            . "&invoice_id={$invoice_id}"
            . "&apiKey={$api_key}"
            . "&total={$total}"
            . "&currency={$currency}"
            . "&inv_details={$inv_details_encoded}"
            . "&return_url={$return_url}"
            . "&email={$email}"
            . "&mobile={$mobile}"
            . "&name={$name}";

        return redirect()->away($url);
    }

public function handleCallback(Request $request)
{
    $invoiceId = $request->input('invoice_id');

    if (!$invoiceId) {
        return redirect()->route('home')->with('error', 'رقم الفاتورة غير موجود.');
    }

    $invoice = Invoice::where('invoice_id', $invoiceId)->first();

    if (!$invoice) {
        return redirect()->route('home')->with('error', 'لم يتم العثور على الفاتورة.');
    }

    if ($invoice->status !== 'paid') {
        $invoice->update(['status' => 'paid']);
    }

    return redirect()->route('home')->with('invoice', $invoice);
}
}
