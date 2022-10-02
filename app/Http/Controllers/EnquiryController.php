<?php

namespace App\Http\Controllers;

use App\Models\Loan;
use App\Models\Enquiry;
use Illuminate\Http\Request;

class EnquiryController extends Controller
{
    public function contact(Request $request)
    {
        Enquiry::create($request->all());
        return redirect()->back()->with('message', 'Your enquiry has been submitted successfully ');
    }
    public function loan_form(Request $request)
    {
       $validated = $request->validate([
            "first_name"=>"required",
            "last_name"=>"required",
            "email"=>"required|email",
            "mobile_no"=>"required|numeric|min:10",
            "address"=>"required",
            "amount_needed"=>"required",
            "business_duration"=>"required",
            "business_type"=>"required",
            "business_photo"=>"required|mimes:jpg,jpeg,bmp,png,pdf",
            "aadhar_front"=>"required|mimes:jpg,jpeg,bmp,png,pdf",
            "aadhar_back"=>"required|mimes:jpg,jpeg,bmp,png,pdf",
            "pan"=>"required|mimes:jpg,jpeg,bmp,png,pdf",
            "gst"=>"required|mimes:jpg,jpeg,bmp,png,pdf",

        ]);
        $business_photo=$request->file('business_photo')->store('clients_documents');
        $aadhar_front=$request->file('aadhar_front')->store('clients_documents');
        $aadhar_back=$request->file('aadhar_back')->store('clients_documents');
        $pan=$request->file('pan')->store('clients_documents');
        $gst=$request->file('gst')->store('clients_documents');


        Loan::create([
            'first_name'=>$validated['first_name'],
            'last_name'=>$validated['last_name'],
            'email'=>$validated['email'],
            'mobile_no'=>$validated['mobile_no'],
            'address'=>$validated['address'],
            'amount_needed'=>$validated['amount_needed'],
            'business_type'=>$validated['business_type'],
            'business_duration'=>$validated['business_duration'],
            'business_photo'=>$business_photo,
            'aadhar_front'=>$aadhar_front,
            'aadhar_back'=>$aadhar_back,
            'pan'=>$pan,
            'gst'=>$gst,
        ]);
        return redirect()->back()->with('message', 'Your loan request has been submitted successfully');



    }

}