@extends('layouts.main')
@section('main')

<div class="container" style="margin-top:10rem; margin-bottom:10rem">
    <div class="p-5 text-center">
        <h3>Loan Application Form</h3>
    </div>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    @if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
    @endif

   <div class="row">
       <div class="col-lg-12">
            <form action="/loan_form" method="post" class="php-email-form" enctype="multipart/form-data">
                @csrf
                <div class="row gy-4">

                    <div class="col-md-6">
                        <input type="text" name="first_name" class="form-control" placeholder="First Name" required="" value="{{ old('first_name') }}">
                    </div>
                    <div class="col-md-6">
                        <input type="text" name="last_name" class="form-control" placeholder="Last Name" required="" value="{{ old('last_name') }}">
                    </div>

                    <div class="col-md-6 ">
                        <input type="email" class="form-control" name="email" placeholder="Your Email" required="" value="{{ old('email') }}">
                    </div>

                    <div class="col-md-6">
                        <input type="tel" class="form-control" name="mobile_no" placeholder="Mobile No" required="" value="{{ old('mobile_no') }}">
                    </div>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="address" placeholder="Address" required="" value="{{ old('address') }}">
                    </div>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="amount_needed" placeholder="Amount Needed" required="" value="{{ old('amount_needed') }}">
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">

                          <select class="form-control" name="business_duration" value="{{ old('business_duration') }}">
                            <option default >Business Duration</option>
                            <option value="less than 1 Year">Less than 1 year</option>
                            <option value="1 or 2 Years">1 to 2 years</option>
                            <option value="2 to 5 Years">2 to 5 years</option>
                            <option value="More than 5 Years">More than 5 years</option>
                          </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <strong>Business Type</strong>
                        <div class="row">

                                <div class="col-md-6">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="business_type" id="" value="Own">
                                        Own
                                    </label>

                                </div>
                                <div class="col-md-6">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="business_type" id="" value="Rented">
                                        Rented
                                    </label>

                                </div>

                        </div>

                    </div>
                    <div class="col-md-6"><div class="form-group">
                      <label for=""><strong>Upload Photo</strong></label><br>
                      <input type="file" class="form-control-file" name="business_photo" accept=".jpg,.png,.pdf" value="{{ old('business_photo') }}">

                    </div>

                    </div>
                    <div class="col-md-6"><div class="form-group">
                      <label for=""><strong>Upload Aadhar Front</strong></label><br>
                      <input type="file" class="form-control-file" name="aadhar_front" accept=".jpg,.png,.pdf" value="{{ old('aadhar_front') }}">

                    </div>

                    </div>
                    <div class="col-md-6"><div class="form-group">
                      <label for=""><strong>Upload Aadhar Back</strong></label><br>
                      <input type="file" class="form-control-file" name="aadhar_back" accept=".jpg,.png,.pdf" value="{{ old('aadhar_back') }}">

                    </div>

                    </div>
                    <div class="col-md-6"><div class="form-group">
                      <label for=""><strong>Upload Pan</strong></label><br>
                      <input type="file" class="form-control-file" name="pan" accept=".jpg,.png,.pdf" value="{{ old('pan') }}">

                    </div>

                    </div>
                    <div class="col-md-6"><div class="form-group">
                      <label for=""><strong>Upload GST/TIN</strong></label><br>
                      <input type="file" class="form-control-file" name="gst" accept=".jpg,.png,.pdf" value="{{ old('gst') }}">

                    </div>

                    </div>
                    <br>
                    <div class="col-md-6">
                        <div class="form-check">
                          <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" required>
                            I accept terms & conditions
                          </label>
                        </div>
                    </div>

                    {{-- <div class="col-md-12">
                        <textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>
                    </div> --}}

                    <div class="text-center col-md-12">


                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                </div>

            </form>

        </div>
   </div>
</div>
@endsection
