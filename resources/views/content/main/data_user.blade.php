            @extends('parts.main.admin.master-admin')
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
                                                <h5>Data User</h5>
                                                {{-- <span class="text-muted">Data User</span> --}}
                                                <div class="card-header-right">
                                                    <ul class="list-unstyled card-option">
                                                        <li><i class="feather icon-maximize full-card"></i></li>
                                                        <li><i class="feather icon-minus minimize-card"></i>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-block">
                                                <div class="form-group row">
                                                    <div class="col-sm-2">
                                                        <a href="{{url('data-user/create')}}" class="btn btn-primary"> + Tambah Data</a>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="dt-responsive table-responsive">
                                                    <table id="basic-btn"
                                                        class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>No.</th>
                                                                <th>Nama User</th>
                                                                <th>Jabatan</th>
                                                                <th>Username</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @php
                                                            $n=1;
                                                            @endphp
                                                            @foreach($dataset as $data)
                                                            <tr>
                                                                @if ($data->jabatan != 'admin' || $data->nama == $user)
                                                                <td>{{$n++}}</td>
                                                                <td>{{$data->nama}}</td>
                                                                <td>{{$data->jabatan}}</td>
                                                                <td>{{$data->username}}</td>
                                                                <td>
                                                                    <div class="btn-group " role="group">
                                                                        <a href="{{url('data-user/'.$data->id.'/edit')}}" type="button" class="btn btn-warning btn-sm waves-effect waves-light" data-toggle="tooltip"
                                                                        data-placement="top" title=""
                                                                        data-original-title="Update"><i class="feather icon-edit-2"></i></a>
                                                                        {{-- button hapus --}}
                                                                        <button type="button" title="Hapus" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusUser{{ $data->id }}">
                                                                            <i class="feather icon-trash"></i>
                                                                        </button>
                                                                    </div>
                                                                </td>    
                                                                @endif
                                                            </tr>
                                                            @endforeach
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>No.</th>
                                                                <th>Nama User</th>
                                                                <th>Jabatan</th>
                                                                <th>Username</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
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
            
@foreach ($dataset as $data)
{{-- Modal Hapus --}}
<div class="modal fade" id="hapusUser{{ $data->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="exampleModalLabel">Hapus data yang dipilih</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/data-user/{{ $data->id }}" method="POST" class="d-inline">
                @method('delete')
                @csrf
                <div class="modal-body">
                    <p>Apakah Anda yakin akan menghapus user <strong>{{ $data->nama }}</strong>?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-danger">Hapus</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endforeach
            
            @endsection