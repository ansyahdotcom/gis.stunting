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
                                    <h5>Tambah Artikel</h5>
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
                                    <form method="post" action="/dashboard/article" enctype="multipart/form-data" accept-charset="UTF-8">
                                        @csrf
                                        <div class="form-group row">
                                            <label for="title" class="col-sm-2 col-form-label">Judul</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="title" id="title" value="{{ old('title') }}"
                                                    class="form-control @error('title') is-invalid @enderror" placeholder="Judul"
                                                    autofocus autocomplete="off">
                                                @error('title')
                                                    <span class="text-danger mt-2">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Penulis</label>
                                            <div class="col-sm-12">
                                                <select name="user_id" id="user_id" class="form-control" required>
                                                    @foreach ($user as $item)
                                                    @if (request()->session()->get('id') == $item->id)
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
                                                <input id="content" type="hidden" name="content" value="{{ old('content') }}" required>
                                                <trix-editor input="content"></trix-editor>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="img" class="col-sm-2 col-form-label">Gambar</label>
                                            <div class="col-md-12">
                                                @error('img')
                                                <span class="text-danger mb-2">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-12 justify-md-content text-center">
                                                <p>Image Preview</p>
                                                <div class="col-md-3 imgboxInsert">
                                                    <img src="" class="img-preview img-fluid rounded mx-auto" alt="">
                                                </div>
                                                <input type="file" name="img" id="img" class="form-control @error('img') is-invalid @enderror"
                                                onchange="previewImage()">
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