@extends('parts.main.admin.master')
@section('content')
<div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body m-t-50">
                    <div class="row">
                        <!-- task, page, download counter  start -->

                        <!-- task, page, download counter  end -->
                        <div class="col-xl-1"></div>
                        <!--  sale analytics start -->
                        <div class="col-xl-10 col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Ubah Artikel</h5>
                                    <div class="card-header-right">
                                        <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <hr>
                                    <form method="post" enctype="multipart/form-data"
                                        action="/dashboard/article/{{ $article->title }}"
                                        accept-charset="UTF-8">
                                        @method('put')
                                        @csrf
                                        <div class="form-group row">
                                            <label for="title" class="col-sm-2 col-form-label">Judul</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="title" id="title" value="{{ str_replace('_', ' ', $article->title), old('title') }}"
                                                class="form-control @error('title') is-invalid @enderror" placeholder="Judul"
                                                autofocus autocomplete="off">
                                                @error('title')
                                                    <span class="text-danger mt-2">{{ $message }}</span>
                                                @enderror
                                                <input type="hidden" name="id" value="{{ $article->id }}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Penulis</label>
                                            <div class="col-sm-12">
                                                <select name="user_id" id="user_id" class="form-control" required>
                                                    @foreach ($user as $item)
                                                    @if (old('user_id', $article->user_id) == $item->id)
                                                    <option selected value="{{ $item->id }}">{{ $item->nama }}</option>
                                                    @else
                                                    <option value="{{ $item->id }}">{{ $item->nama }}</option>
                                                    @endif
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Konten</label>
                                            <div class="col-sm-12">
                                                @error('content')
                                                    <span class="text-danger mb-2">{{ $message }}</span>
                                                @enderror
                                                <input id="content" type="hidden" name="content" value="{{ $article->content, old('content') }}">
                                                <trix-editor input="content"></trix-editor>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="img" class="col-sm-2 col-form-label">Gambar</label>
                                            <div class="col-sm-12 justify-md-content text-center">
                                                @error('img')
                                                <span class="text-danger mb-2">{{ $message }}</span>
                                                @enderror
                                                <p>Image Preview</p>
                                                <div class="col-md-3 imgboxInsert">
                                                @if ($article->img)
                                                    <img src="/storage/{{ $article->img }}" class="img-preview img-fluid rounded mx-auto" alt="">
                                                    @else
                                                    <img src="" class="img-preview img-fluid rounded mx-auto" alt="">
                                                    @endif
                                                </div>
                                                <input type="file" name="img" id="img" class="form-control @error('img') is-invalid @enderror"
                                                onchange="previewImage()">
                                                <input type="hidden" name="oldimg" value="{{ $article->img }}">
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <div class="col-sm-2">
                                                <button class="btn btn-primary" name="simpan"
                                                id="simpan">Simpan</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-1"></div>
                        <!--  sale analytics end -->
                    </div>
                </div>
            </div>

            {{-- <div id="styleSelector">
                
            </div> --}}
        </div>
    </div>
</div>
@endsection