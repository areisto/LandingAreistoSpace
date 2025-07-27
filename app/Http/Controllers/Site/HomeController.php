<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Client;
use App\Models\Contact;
use App\Models\Newsletter;
use App\Models\Plan;
use App\Models\PrivacyPolicy;
use Illuminate\Validation\ValidationException;
use Illuminate\Http\Request;
class HomeController extends Controller
{
    public function index() {
			$clients = Client::orderBy('id', 'desc')
				->take(10)
				->get();
				$plans = Plan::orderBy('price', 'asc')->get();
        return view('site.home.index', compact('clients', 'plans'));
    }

		public function privacy() {
				$content = PrivacyPolicy::first();
				return view('site.home.privacy-policy',compact('content')
				);
    }

		public function contact() {
			return view('site.home.contact');
		}

    public function subscribe(Request $request) {
		try {
            $validated = $request->validate([
                'email' => 'required|email|unique:newsletters,email',
            ], [
                'email.required' => 'هذا الحقل مطلوب.',
                'email.email'    => 'الرجاء إدخال بريد إلكتروني صالح.',
                'email.unique'   => 'هذا البريد الإلكتروني مسجل بالفعل.',
            ]);
			Newsletter::create([
					'email' => $validated['email'],
			]);
			return response()->json(['success' => 'تم الاشتراك بنجاح.']);
		} catch (ValidationException $e) {
			return response()->json(['errors' => $e->errors()], 422);
		}
	}

	public function submitContactForm(Request $request) {
		try {
			$validatedData = $request->validate([
				'name'     => 'required|string|max:255',
				'email'          => 'required|email|max:255',
				'message'        => 'required|string',
			]);
			Contact::create([
				'name' => $validatedData['name'],
				'email' => $validatedData['email'],
				'message' => $validatedData['message'],
			]);
			return response()->json([
                'success' => true,
                'message' => __('send successflly')
    		]);
		} catch (ValidationException $e) {
			return redirect()->back()->with('error', $e->errors());
		}
	}
}