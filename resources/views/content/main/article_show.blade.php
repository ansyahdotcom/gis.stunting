@extends('parts.landingpage.master')
@section('content')

<section class="article-detail">
    <div class="container">
        <div class="row clearfix">
            <div class="col-lg-8 col-md-12 col-sm-12">
                @if (request()->session()->get('nama') != NULL)
                    <a type="button" class="btn btn-primary btn-sm mb-3" href="/dashboard/article"><i class="feather icon-arrow-left mr-1"></i>Kembali ke dashboard</a>
                @endif
                <div class="blog-details-content">
                    <figure class="image-box">
                        <img src="/storage/{{ $article->img }}" alt="">
                    </figure>
                    <div class="inner-box">
                        <ul class="post-info clearfix">
                            <li><i class="feather icon-calendar"></i>
                                @if ($article->posted == 1)
                                {{ date('d F Y', strtotime($article->published_at)) }}
                                @else
                                    Belum diposting
                                @endif
                            </li>
                            <li><i class="feather icon-user"></i>{{ $article->user->nama }}</li>
                        </ul>
                        <div class="text">
                            <h2>{{ str_replace('_', ' ', $article->title) }}</h2>
                            
                            <p>
                                <?php 
                                $content = $article->content;
                                echo $content;
                                ?>    
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12">
                <div class="sidebar-article">
                    <div class="inner-box">
                        <div class="widget-title">
                            <h3>Artikel Terbaru</h3>
                        </div>
                        @foreach ($articles as $item)
                        <div class="post">
                            <figure class="post-thumb"><a href="/article/{{  $item->title }}"><img src="/storage/{{ $article->img }}" alt=""></a></figure>
                            <h6 style="font-weight: bold;"><a href="/article/{{  $item->title }}">{{  str_replace('_', ' ', $item->title) }}</a></h6>
                            {{-- <div class="post-date"><i class="far fa-calendar-alt"></i>{{  $item->date }}</div> --}}
                        </div>  
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
