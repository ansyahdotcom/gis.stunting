@extends('parts.landingpage.master')
@section('content')

<!-- Main Section-->
<div class="hero-section app-hero">
    <div class="container">
        <div class="hero-content app-hero-content text-center">
            <div class="row justify-content-md-center">
                <div class="col-md-10 mb-5">
                    <h1 class="wow fadeInUp" data-wow-delay="0s">Halaman Artikel</h1>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="pricing-section no-color">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ">
                @if ($article->count())
                <div class="row">
                    @foreach ($article as $item)
                    <div class="col-md-4 col-sm-6 col-xs-12 mb-5">
                        <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
                            <div class="icon">
                                <img src="/storage/{{ $item->img }}" alt="Icon">
                            </div>
                            <div class="pricing-details">
                                <h2>{{ str_replace('_', ' ', $item->title) }}</h2>
                                <p>
                                    <?php 
                                    $content = strip_tags($item->content);
                                    $i = 90;
                                    $count = strlen($content);
                                    if ($count > $i) {
                                        $char = $content[$i - 1];
                                        while ($char != ' ') {
                                            $char = $content[--$i];
                                        }
                                        echo substr($content, 0, $i) . ' ...';
                                    } else {
                                        echo $content;
                                    }
                                ?>
                                </p>
                                <br>
                                <a href="/article/{{ $item->title }}" class="btn btn-primary btn-action btn-fill btn-article">Read more</a>
                            </div>
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
    {{ $article->links() }}
</div>
@endsection