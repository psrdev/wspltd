
<header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

        <a href="/" class="logo d-flex align-items-center">

            <span>WSFS</span>
        </a>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="/">Home</a></li>
                <li><a class="nav-link scrollto" href="/about">About</a></li>
                <li><a class="nav-link scrollto" href="/gallery">Gallery</a></li>




                <li class="dropdown"><a href="#"><span>Branches</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        @php
                         $branch =DB::table('branches')->get();
                        @endphp
                        @foreach ($branch as $br)
                            <li><a href="{{ route('branch.show',$br->id) }}">{{ $br->city }}</a></li>
                        @endforeach


                    </ul>
                </li>
                <li><a class="nav-link scrollto" href="/contact">Contact</a></li>
                <li><a class="nav-link scrollto" href="/login">Login</a></li>

            </ul>
            <a class="getstarted scrollto" href="/loan">Apply for loan</a>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

    </div>
</header>
