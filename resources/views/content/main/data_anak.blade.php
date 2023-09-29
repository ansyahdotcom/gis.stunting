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
                        {{-- <div class="col-xl-1"></div> --}}
                        <!--  sale analytics start -->
                        <div class="col-xl-12 col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Data Anak</h5>
                                    <div class="card-header-right">
                                        <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <div class="form-group row">
                                        <div class="col-sm-2">
                                            <a href="{{url('dataanak/create')}}" class="btn btn-primary">+ Tambah Data Anak</a>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="dt-responsive table-responsive">
                                        <table
                                            id="basic-btn"
                                            class="table table-striped table-bordered nowrap"
                                        >
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Nama Anak</th>
                                                    <th>Nama Orang Tua</th>
                                                    <th>Jenis Kelamin</th>
                                                    <th>Tanggal Lahir</th>
                                                    <th>Kecamatan</th>
                                                    <th>Desa/Kelurahan</th>
                                                    <th>Rt.</th>
                                                    <th>Rw.</th>
                                                    <th>Posyandu</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($dataset as $data)
                                                <tr>
                                                    <td>{{$data->id_anak}}</td>
                                                    <td>
                                                        {{$data->nama_anak}}
                                                    </td>
                                                    <td>
                                                        {{ $data->nama_ayah !=
                                                        null ? $data->nama_ayah
                                                        : $data->nama_ibu }}
                                                    </td>
                                                    <td>
                                                        {{$data->jenis_kelamin}}
                                                    </td>
                                                    <td>
                                                        {{ date('d F Y', strtotime($data->tgl_lahir)) }}
                                                    </td>
                                                    <td>{{$data->nama_kcm}}</td>
                                                    <td>{{$data->kelurahan}}</td>
                                                    <td>{{$data->rt}}</td>
                                                    <td>{{$data->rw}}</td>
                                                    <td>{{$data->posyandu}}</td>
                                                    <td>
                                                        <a
                                                            href="/dataanak/{{ $data->id_anak }}/edit"
                                                            type="button"
                                                            class="btn btn-warning btn-sm waves-effect waves-light"
                                                            data-toggle="tooltip"
                                                            data-placement="top"
                                                            title=""
                                                            data-original-title="Update"
                                                            ><i
                                                                class="feather icon-edit-2"
                                                            ></i
                                                        ></a>
                                                        {{-- button hapus --}}
                                                        <button type="button" title="Hapus" class="btn btn-danger btn-sm" data-toggle="modal"
                                                            data-target="#hapusAnak{{ $data->id_anak }}"> <i class="feather icon-trash"></i>
                                                        </button>
                                                    </tr>
                                                    </td>
                                                @endforeach
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Nama Anak</th>
                                                    <th>Nama Orang Tua</th>
                                                    <th>Jenis Kelamin</th>
                                                    <th>Tanggal Lahir</th>
                                                    <th>Kecamatan</th>
                                                    <th>Desa/Kelurahan</th>
                                                    <th>Rt.</th>
                                                    <th>Rw.</th>
                                                    <th>Posyandu</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {{-- <div class="col-xl-1"></div> --}}
                        <!--  sale analytics end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@foreach ($dataset as $item)
{{-- Modal Hapus --}}
<div class="modal fade" id="hapusAnak{{ $item->id_anak }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="exampleModalLabel">Hapus data yang dipilih</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/dataanak/{{ $item->id_anak }}" method="POST" class="d-inline">
                @method('delete')
                @csrf
                <div class="modal-body">
                    <p>Apakah Anda yakin akan menghapus data Anak <strong>{{ $item->nama_anak }}</strong>?</p>
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
<script type="text/javascript">
    $(document).ready(function () {
        $(".button").on("click", function () {
            var id = $(this).data("id");
            var url = $(this).data("url");
            // e.preventDefault();
            // var url = e.target;
            console.log(url);
            swal(
                {
                    title: "Are you sure?",
                    text: "Your will not be able to recover this imaginary file!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "Yes, delete it!",
                    closeOnConfirm: false,
                },
                function () {
                    $.ajax({
                        type: "DELETE",
                        url: url,
                        headers: {
                            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                                "content"
                            ),
                        },
                        success: function (response) {
                            if (response.message == "sukses") {
                                swal(
                                    {
                                        title: "Deleted!",
                                        text: "File anda telah dihapus.",
                                        type: "success",
                                        confirmButtonClass: "btn-primary",
                                        confirmButtonText: "Ok",
                                        closeOnConfirm: false,
                                    },
                                    function () {
                                        location.reload();
                                    }
                                );
                                // swal("Deleted!", "Your imaginary file has been deleted.", "success");
                            }
                            // location.reload();
                            //         //
                        },
                    });
                }
            );
        });
    });
</script>
@endsection
