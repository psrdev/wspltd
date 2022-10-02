<section id="contact" class="contact">

    <div class="container aos-init aos-animate" data-aos="fade-up">

        <header class="section-header">
            {{-- <h2>Our Branches</h2> --}}
            <p>Our Branches</p>
        </header>
       <div class="my-4 row">
        <div class="col-lg-12">

            <div class="row gy-4">
                <div class="col-md-12">
                    <div class="text-center info-box">
                        <i class="bi bi-geo-alt"></i>
                        <h3>Head Office</h3>
                        <p>HIG-42 Shastripuram, Rajendra nagar<br>Gorakhnath, Gorakhpur, Uttar Pradesh 273015</p>
                    </div>
                </div>

            </div>


        </div>
    </div>

        @php
        $br = DB::table('branches')->get();
        @endphp

        <div class="row gy-4">
            @foreach ($br as $item)




            <div class="col-lg-4">

                <div class="row gy-4">
                    <div class="col-md-12">
                        <div class="text-center info-box" style="text-transform: capitalize">
                            <i class="bi bi-geo-alt"></i>
                            <h3>{{ $item->city }}</h3>
                            <p>{{ $item->address_line_1 }}<br>{{ $item->address_line_2 }} {{ $item->city }} {{ $item->pin_code }} {{ $item->state }}</p>
                        </div>
                    </div>
                </div>


            </div>

@endforeach

        </div>

    </div>

</section>
