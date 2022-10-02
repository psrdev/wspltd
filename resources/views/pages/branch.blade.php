@extends('layouts.main')

@section('main')
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <ol>
                <li><a href="/">Home</a></li>
                <li>Branch Details</li>
            </ol>
            <h2>{{ $branch[0]->city }} Branch</h2>

        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">

            <div class="row gy-4">

                <div class="col-lg-8">
                    <div
                        class="portfolio-details-slider swiper swiper-initialized swiper-horizontal swiper-pointer-events">
                        <div class="swiper-wrapper align-items-center"
                            style="transform: translate3d(-1712px, 0px, 0px); transition-duration: 0ms;"
                            id="swiper-wrapper-9fa103f5986e9f3ac" aria-live="off">

                            <div class="swiper-slide" style="width: 856px;" role="group" aria-label="1 / 3">
                                <img src="{{ asset('assets/img/portfolio/portfolio-1.jpg') }}" alt="">
                            </div>

                            <div class="swiper-slide swiper-slide-prev" style="width: 856px;" role="group"
                                aria-label="2 / 3">
                                <img src="{{ asset('assets/img/portfolio/portfolio-2.jpg') }}" alt="">
                            </div>

                            <div class="swiper-slide swiper-slide-active" style="width: 856px;" role="group"
                                aria-label="3 / 3">
                                <img src="{{ asset('assets/img/portfolio/portfolio-3.jpg') }}" alt="">
                            </div>

                        </div>
                        <div
                            class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal">
                            <span class="swiper-pagination-bullet" tabindex="0" role="button"
                                aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet" tabindex="0"
                                role="button" aria-label="Go to slide 2"></span><span
                                class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0"
                                role="button" aria-label="Go to slide 3"></span>
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="portfolio-info">
                        <h3>{{ $branch[0]->city }} {{ $branch[0]->state }}</h3>
                       <strong><div style="text-transform: capitalize;font:bold">
                        @foreach ($branch as $item)
                        <div>{{$item->address_line_1 }}, <br>{{ $item->address_line_2 }} <br>
                            {{ $item->city }}-{{ $item->pin_code }}, <br>{{ $item->state }}
                        </div>

                        @endforeach


                    </div></strong>
                    </div>
                    {{-- <div class="portfolio-description">
                        <h2>This is an example of portfolio detail</h2>
                        <p>
                            Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore
                            quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim.
                            Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi
                            nulla at esse enim cum deserunt eius.
                        </p>
                    </div> --}}
                </div>

            </div>

        </div>
    </section><!-- End Portfolio Details Section -->

</main>

@endsection
