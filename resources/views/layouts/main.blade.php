<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="Foxy Web Themes" />
    <title>Wall Street Fincap Services Pvt Ltd</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="images/favicon.ico" />
    <!-- Google fonts-->
    <meta content="" name="description">

    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/aos/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">

    <!-- =======================================================
      * Template Name: FlexStart - v1.7.0
      * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
      * Author: BootstrapMade.com
      * License: https://bootstrapmade.com/license/
      ======================================================== -->
</head>

<body data-nav-offset="58">

@include('inc.header')

@yield('main')
@include('inc.footer')

   <script src="{{ asset('assets/vendor/bootstrap/js/bootstrap.bundle.js') }}"></script>
    <script src="{{ asset('assets/vendor/aos/aos.js') }}"></script>
    {{-- <script src="{{ asset('assets/vendor/php-email-form/validate.js') }}"></script> --}}
    <script src="{{ asset('assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/purecounter/purecounter.js') }}"></script>
    <script src="{{ asset('assets/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('assets/js/newWaterfall.js') }}"></script>
    <script src="{{ asset('assets/js/jq.js') }}"></script>




    <!-- Template Main JS File -->
    <script src="{{ asset('assets/js/main.js') }}"></script>
   <script>
        $(document).ready(function() {
                            $('#enq_form').on('submit', function(e){
                            // validation code here

                            e.preventDefault();
                            $.ajax({
                            type: 'post',
                            url: '/contact_form',
                            data: $('#enq_form').serialize(),
                            success: function () {
                            alert('form was submitted');
                            }
                            });

                            });
                            $('#enq_form').submit();
                            $('#sub_message').hide();



                            });
                            });
    </script>





</body>

</html>
