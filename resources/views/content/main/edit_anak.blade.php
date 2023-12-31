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
                                                        <h5>Ubah Data Anak</h5>
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
                                                        <form method="post"
                                                            action="/dataanak/{{ $anak->id_anak }}"
                                                            accept-charset="UTF-8">
                                                            @method('put')
                                                            @csrf
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Nama Anak</label>
                                                                <div class="col-sm-4">
                                                                    <input type="hidden" name="_method" id="_method"
                                                                        class="form-control" value="PATCH">
                                                                    <input type="text" name="nama_anak" id="nama_anak"
                                                                        class="form-control" placeholder="Nama Anak" value="{{$anak->nama_anak}}"
                                                                        required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Nama Ayah</label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="nama_ayah"
                                                                        id="nama_ayah" class="form-control"
                                                                        placeholder="Nama Ayah Kandung" value="{{$anak->nama_ayah}}" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Nama Ibu</label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="nama_ibu"
                                                                        id="nama_ibu" class="form-control"
                                                                        placeholder="Nama Ibu Kandung" value="{{$anak->nama_ibu}}" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Jenis
                                                                    Kelamin</label>
                                                                    <div class="col-sm-4">
                                                                        <input type="hidden" id="jk_ori" name="jk_ori" class="form-control" value="{{$anak->jenis_kelamin}}">
                                                                        <select name="jenis_kelamin" id="jenis_kelamin"
                                                                        class="form-control" required>
                                                                        <option value="&nbsp">--Pilih--</option>
                                                                        <option @if($anak->jenis_kelamin =='L') selected @endif value="L">Laki-Laki</option>
                                                                        <option @if($anak->jenis_kelamin =='P') selected @endif value="P">Perempuan</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Tanggal Lahir</label>
                                                                <div class="col-sm-4">
                                                                    <input type="date" name="tgl_lahir"
                                                                    id="tgl_lahir" class="form-control"
                                                                    placeholder="Tanggal Lahir" value="{{$anak->tgl_lahir}}" required>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Kecamatan</label>
                                                                    <div class="col-sm-4">
                                                                        <select name="id_kcm" id="id_kcm"
                                                                        class="js-example-placeholder-multiple col-sm-12" placeholder="Kecamatan" required>
                                                                        <option value="&nbsp">--Pilih--</option>
                                                                        @foreach ($kcm as $item)
                                                                        @if ($anak->id_kcm == $item->id_kcm)
                                                                        <option value="{{$item->id_kcm}}" selected>{{$item->nama_kcm}}</option>
                                                                        @else
                                                                        <option value="{{$item->id_kcm}}">{{$item->nama_kcm}}</option>
                                                                        @endif
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Kelurahan/Desa </label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="kelurahan"
                                                                        id="kelurahan" class="form-control"
                                                                        placeholder="Kelurahan/Desa" value="{{$anak->kelurahan}}" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Rt </label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="rt"
                                                                        id="rt" class="form-control"
                                                                        placeholder="Rt" value="{{$anak->rt}}" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Rw</label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="rw"
                                                                        id="rw" class="form-control"
                                                                        placeholder="Rw" value="{{$anak->rw}}" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Posyandu</label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="posyandu"
                                                                        id="posyandu" class="form-control"
                                                                        placeholder="posyandu" value="{{$anak->posyandu}}" required>
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