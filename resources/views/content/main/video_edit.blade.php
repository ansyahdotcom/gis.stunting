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
                                    <h5>Ubah Konten Video</h5>
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
                                    <form method="post" action="/dashboard/video/{{ $video->title }}" enctype="multipart/form-data" accept-charset="UTF-8">
                                        @method('put')
                                        @csrf
                                        <div class="form-group row">
                                            <label for="title" class="col-sm-2 col-form-label">Judul</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="title" id="title" value="{{ str_replace('_', ' ', $video->title), old('title') }}"
                                                class="form-control @error('title') is-invalid @enderror" placeholder="Judul"
                                                autofocus autocomplete="off">
                                                @error('title')
                                                    <span class="text-danger mt-2">{{ $message }}</span>
                                                @enderror
                                                <input type="hidden" name="id" value="{{ $video->id }}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="img" class="col-sm-2 col-form-label">Thumbnail</label>
                                            <div class="col-sm-12 justify-md-content text-center">
                                                @error('thumbnail')
                                                <span class="text-danger mb-2">{{ $message }}</span>
                                                @enderror
                                                <p>Image Preview</p>
                                                <div class="col-md-3 imgboxInsert">
                                                @if ($video->thumbnail)
                                                    <img src="/storage/{{ $video->thumbnail }}" class="img-preview img-fluid rounded mx-auto" alt="">
                                                    @else
                                                    <img src="" class="img-preview img-fluid rounded mx-auto" alt="">
                                                    @endif
                                                </div>
                                                <input type="file" name="thumbnail" id="img" class="form-control @error('img') is-invalid @enderror"
                                                onchange="previewImage()" value="{{ $video->thumbnail, old('thumbnail') }}">
                                                <input type="hidden" name="old_thumbnail" value="{{ $video->thumbnail }}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="video_link" class="col-sm-2 col-form-label">Link Video Online</label>
                                            <div class="col-sm-12">
                                                <input type="text" name="video_link" id="video_link" value="{{ $video->video_link, old('video_link') }}"
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
                                                <input type="file" name="video_file" id="video_file" value="{{ $video->video_file, old('video_file') }}"
                                                class="form-control @error('video_file') is-invalid @enderror">
                                                @error('video_file')
                                                <span class="text-danger mb-2">{{ $message }}</span>
                                                @enderror
                                                <input type="text" name="video_file" value="{{ $video->video_file }}" class="form-control" readonly>
                                                <input type="hidden" name="old_video_file" value="{{ $video->video_file }}">
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