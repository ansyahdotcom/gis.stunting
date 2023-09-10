<!DOCTYPE html>
<html lang="en">

@include('parts.landingpage.head')
<body>
    <div class="wrapper animsition" data-animsition-in-class="fade-in" data-animsition-in-duration="1000"
    data-animsition-out-class="fade-out" data-animsition-out-duration="1000">
    <div class="container">
        <div class="main-header">
            <nav class="navbar navbar-expand-lg navbar-light navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <a class="navbar-brand page-scroll" href="/"><img
                            src="{{asset('assets\extra-pages\landingpage\assets\logos\kemendikbud_polije_2.png')}}"
                            alt="Logo"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                        </ul>
                        <ul class="navbar-nav my-2 my-lg-0">
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="{{ Request::is('/*') ? '#main' : '/' }}">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="{{ Request::is('/*') ? '#peta' : '/#peta' }}">Peta</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="{{ Request::is('/*') ? '#visi_misi' : '/#visi_misi' }}">Visi & Misi</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="{{ Request::is('/*') ? '#article' : '/#article' }}">Artikel</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="{{ Request::is('/*') ? '#video' : '/#video' }}">Video</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="{{ Request::is('/*') ? '#kontak' : '/#kontak' }}">Kontak</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link page-scroll" href="{{ Request::is('/*') ? '#reviews' : '/#reviews' }}">Contributor</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/login">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div class="main" id="main">