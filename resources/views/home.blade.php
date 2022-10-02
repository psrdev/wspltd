@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif


                    <section class="my-5 contact">

                        <div class="container aos-init aos-animate" data-aos="fade-up">

                            <header class="section-header">
                                <h3>Add Branch</h3>

                            </header>

                            <div class="row gy-4">



                                <div class="col-lg-12">
                                    <form action="{{ route('branch.store') }}" method="post" class="php-email-form">
                                        @csrf
                                        <div class="row gy-4">
                                            <div class="col-md-12">
                                                <input type="text" name="address_line_1" class="form-control" required
                                                    placeholder="Address line 1">
                                            </div>
                                            <div class="col-md-12">
                                                <input type="text" name="address_line_2" class="form-control" required
                                                    placeholder="Address line 2">
                                            </div>

                                            <div class="col-md-6">
                                                <input type="text" name="city" class="form-control" placeholder="City" required="">
                                            </div>

                                            <div class="col-md-6 ">
                                                <input type="text" class="form-control" name="state" placeholder="State" required="">
                                            </div>
                                            <div class="col-md-6 ">
                                                <input type="text" class="form-control" name="pin_code" placeholder="Pin Code" required="">
                                            </div>
                                            {{-- <div class="col-md-6 ">
                                                <input type="file" class="form-control" name="image[]">
                                            </div> --}}




                                            {{-- <div class="col-md-12">
                                                <textarea class="form-control" name="message" rows="6" placeholder="Message"
                                                    required=""></textarea>
                                            </div> --}}

                                            <div class="text-center col-md-12">


                                                <button type="submit">Submit</button>
                                            </div>

                                        </div>
                                    </form>
                                    @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    @endif
                                </div>

                            </div>

                        </div>


                    </section>
                    <hr>
                    <section class="my-5 contact">

                        <div class="container aos-init aos-animate" data-aos="fade-up">

                            <header class="section-header">
                                <h3>Enquiries</h3>

                            </header>

                            <div class="row gy-4">
                                @php
                                $enq = DB::table('enquiries')->get()
                                @endphp



                                <div class="col-lg-12">

                                    <table class="table table-striped">
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Subject</th>
                                            <th>Message</th>
                                        </tr>
                                        @foreach ($enq as $item)
                                        <tr>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->email }}</td>
                                            <td>{{ $item->subject }}</td>
                                            <td>{{ $item->message }}</td>

                                        </tr>
                                        @endforeach

                                    </table>
                                </div>

                            </div>

                        </div>


                    </section>
                    <hr>
                    <section class="my-5 contact">

                        <div class="container aos-init aos-animate" data-aos="fade-up">

                            <header class="section-header">
                                <h3>Loan Request</h3>

                            </header>

                            <div class="row gy-4">
                                @php
                                $loan = DB::table('loans')->get()
                                @endphp



                                <div class="col-lg-12">

                                    <table class="table table-striped">
                                        <tr>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Email</th>
                                            <th>Mobile No</th>
                                            <th>Address</th>
                                            <th>Amount needed</th>
                                            <th>Business Type</th>
                                            <th>Business duration</th>
                                            <th>Documents</th>

                                        </tr>
                                        @foreach ($loan as $item)
                                        <tr>
                                            <td>{{ $item->first_name }}</td>
                                            <td>{{ $item->last_name }}</td>
                                            <td>{{ $item->email }}</td>
                                            <td>{{ $item->mobile_no }}</td>
                                            <td>{{ $item->address }}</td>
                                            <td>{{ $item->amount_needed }}</td>
                                            <td>{{ $item->business_type }}</td>
                                            <td>{{ $item->business_duration }}</td>
                                            <td><img  src="{{ storage_path()."/".$item->business_photo; }}" ></td>


                                        </tr>
                                        @endforeach

                                    </table>
                                </div>

                            </div>

                        </div>


                    </section>
                </div>
            </div>
        </div>
    </div>


</div>
@endsection
