@extends('parts.landingpage.master')
@section('content')

<!-- Main Section-->
<div class="hero-section app-hero">
    <div class="container">
        <div class="hero-content app-hero-content text-center">
            <div class="row justify-content-md-center">
                <div class="col-md-10 mb-5">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">Halaman Konten Video</h1>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="about-section no-color">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ">
                @if ($video->count())
                <div class="row">
                    @foreach($video as $data)
                    <div class="col-md-4 col-sm-6 col-xs-12 video-column mb-5">
                        <div class="video-inner">
                            <figure class="image-box">
                                <img src="storage/{{ $data->thumbnail }}" alt="">
                            </figure>
                            <div class="video-btn">
                                <a href="{{ $data->video_link != null ? $data->video_link : 'storage/' . $data->video_file }}" class="lightbox-image" data-caption=""></a>
                            </div>
                        </div>
                        <div class="title">
                            <h4><a href="{{ $data->video_link != null ? $data->video_link : 'storage/' . $data->video_file }}" class="lightbox-image" data-caption="">{{ str_replace('_', ' ', $data->title) }}</a></h4>
                        </div>
                    </div>
                    @endforeach
                </div>
                @else
                <div class="text-center">
                    <h3 class="wow fadeInUp" data-wow-delay="0s">Belum ada artikel terbaru</h3>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
<div class="col-md-3 pagination-article">
    {{ $video->links() }}
</div>
@endsection