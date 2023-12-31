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
                                                        <h5>Tambah Data User</h5>
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
                                                        <form method="POST" action="{{ url('data-user')}}"accept-charset="UTF-8">
                                                            {{ csrf_field() }}
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Nama User</label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="nama_user" id="nama_user"
                                                                        class="form-control" placeholder="Contoh : Udin"
                                                                        required autocomplete="off" autofocus>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Jabatan</label>
                                                                    <div class="col-sm-4">
                                                                        <select name="jabatan" id="jabatan"
                                                                        class="js-example-placeholder-multiple col-sm-12" required>
                                                                        <option value="&nbsp">--Pilih--</option>
                                                                        <option value="admin">Admin</option>
                                                                        <option value="petugas">Petugas</option>
                                                                        <option value="bidan">Bidan</option>
                                                                        
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Username</label>
                                                                <div class="col-sm-4">
                                                                    <input type="text" name="username" id="username"
                                                                        class="form-control" placeholder="Contoh : Udin"
                                                                        required autocomplete="off">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Password</label>
                                                                <div class="col-sm-4">
                                                                    <input type="password" name="password" id="password"
                                                                        class="form-control" placeholder="Contoh : Udin"
                                                                        required>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group">
                                                                <div class="col-sm-2">
                                                                    <button type="submit" class="btn btn-primary" name="simpan"
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