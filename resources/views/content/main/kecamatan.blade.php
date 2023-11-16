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
                                    <h5>Data Kecamatan</h5>
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
                                            <a href="/kecamatan/create" class="btn btn-primary"> + Tambah Kecamatan</a>
                                        </div>
                                    </div>
                                    <hr>
                                    @if ($kecamatan->count())
                                    <div class="dt-responsive table-responsive">
                                        <table id="basic-btn"
                                            class="table table-striped table-bordered nowrap">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Kecamatan</th>
                                                    <th>Longitude</th>
                                                    <th>Latitude</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($kecamatan as $data)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{$data->nama_kcm}}</td>
                                                    <td>{{$data->longtd_kcm}}</td>
                                                    <td>{{$data->latd_kcm}}</td>
                                                    <td>
                                                        <div class="btn-group " role="group">
                                                            <a href="/kecamatan/{{ $data->nama_kcm }}/edit" type="button" class="btn btn-warning btn-sm waves-effect waves-light" data-toggle="tooltip"
                                                            data-placement="top" title=""
                                                            data-original-title="Update"><i class="feather icon-edit-2"></i></a>
                                                            {{-- button hapus --}}
                                                        <button type="button" title="Hapus" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusKcm{{ $data->id_kcm }}">
                                                            <i class="feather icon-trash"></i>
                                                        </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Kecamatan</th>
                                                    <th>Longitude</th>
                                                    <th>Latitude</th>
                                                    <th>Action</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                    @else
                                    <p>Belum ada data kecamatan</p>
                                    @endif
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

@foreach ($kecamatan as $item)
{{-- Modal Hapus --}}
<div class="modal fade" id="hapusKcm{{ $item->id_kcm }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="exampleModalLabel">Hapus data yang dipilih</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/kecamatan/{{ $item->nama_kcm }}" method="POST" class="d-inline">
                @method('delete')
                @csrf
                <div class="modal-body">
                    <p>Apakah Anda yakin akan menghapus data kecamatan <strong>{{ $item->nama_kcm }}</strong>?</p>
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