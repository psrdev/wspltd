@extends('layouts.main')
@section('main')
<section  class="contact">

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
                            <input type="text" name="address_line_1"  class="form-control" required placeholder="Address line 1">
                        </div>
                        <div class="col-md-12">
                            <input type="text" name="address_line_2"  class="form-control" required placeholder="Address line 2">
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
                            <input type="file" class="form-control" name="image[]"  >
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


@endsection
