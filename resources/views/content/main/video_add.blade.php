@extends('parts.main.admin.master')
@section('content')
<div class="flash-data" data-flashdata="<?= session()->get('message') ?>"></div>
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
                                    <h5>Tambah Konten Video</h5>
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
                                    <form method="post" action="/dashboard/video" enctype="multipart/form-data" accept-charset="UTF-8">
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
                                            <label for="img" class="col-sm-2 col-form-label">Thumbnail</label>
                                            <div class="col-md-12">
                                                @error('thumbnail')
                                                <span class="text-danger mb-2">{{ $message }}</span>
                                                @enderror
                                            </div>
                                            <div class="col-sm-12 justify-md-content text-center">
                                                <p>Image Preview</p>
                                                <div class="col-md-3 imgboxInsert">
                                                    <img src="" class="img-preview img-fluid rounded mx-auto" alt="">
                                                </div>
                                                <input type="file" name="thumbnail" id="img" class="form-control @error('thumbnail') is-invalid @enderror"
                                                onchange="previewImage()">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="video_link" class="col-sm-2 col-form-label">Link Video Online</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="video_link" id="video_link" value="{{ old('video_link') }}"
                                                    class="form-control @error('video_link') is-invalid @enderror" placeholder="Link video online"
                                                    autofocus autocomplete="off">
                                                @error('video_link')
                                                    <span class="text-danger mt-2">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="video_file" class="col-sm-2 col-form-label">Upload File Video</label>
                                            <div class="col-sm-12">
                                                <input type="file" name="video_file" id="video_file" class="form-control @error('video_file') is-invalid @enderror">
                                                @error('video_file')
                                                <span class="text-danger mb-2">{{ $message }}</span>
                                                @enderror
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
        </div>
    </div>
</div>
@endsection