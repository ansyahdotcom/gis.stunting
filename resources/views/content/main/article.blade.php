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
                                    <h5>Artikel</h5>
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
                                            <a href="{{url('dashboard/article/create')}}" class="btn btn-primary"> + Tambah Artikel</a>
                                        </div>
                                    </div>
                                    <hr>
                                    @if ($article->count())
                                    <div class="dt-responsive table-responsive">
                                        <table id="basic-btn"
                                            class="table table-striped table-bordered nowrap">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Judul</th>
                                                    <th>Penulis</th>
                                                    <th>Konten</th>
                                                    <th>Tanggal Posting</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($article as $data)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <?php 
                                                        $judul = str_replace('_', ' ', $data->title);
                                                        $i = 30;
                                                        $count = strlen($judul);
                                                        if ($count > $i) {
                                                            $char = $judul[$i - 1];
                                                            while ($char != ' ') {
                                                                $char = $judul[--$i];
                                                            }
                                                            echo substr($judul, 0, $i) . ' ...';
                                                        } else {
                                                            echo $judul;
                                                        }
                                                        ?>
                                                    <td>{{ $data->user->nama }}</td>
                                                    <td>
                                                        <?php 
                                                        $konten = $data->content;
                                                        $i = 30;
                                                        $count = strlen($konten);
                                                        if ($count > $i) {
                                                            $char = $konten[$i - 1];
                                                            while ($char != ' ') {
                                                                $char = $konten[--$i];
                                                            }
                                                            echo substr($konten, 0, $i) . ' ...';
                                                        } else {
                                                            echo $konten;
                                                        }
                                                        ?>
                                                    </td>
                                                    <td>
                                                        @if ($data->published_at == null)
                                                            belum diposting
                                                            @else
                                                            {{ date('d F Y', strtotime($data->published_at)) }}
                                                        @endif
                                                    </td>
                                                    <td>
                                                        {{-- button preview --}}
                                                        <a href="/dashboard/article/{{ $data->title }}" type="button" class="btn btn-primary btn-sm border-0 waves-effect waves-light" data-toggle="tooltip"
                                                        data-placement="top"  data-original-title="Pratinjau"><i class="feather icon-eye"></i></a>
                                                        {{-- button edit --}}
                                                        <a href="/dashboard/article/{{ $data->title }}/edit" type="button" class="btn btn-warning btn-sm border-0 waves-effect waves-light" data-toggle="tooltip"
                                                        data-placement="top" data-original-title="Ubah"><i class="feather icon-edit-2"></i></a>
                                                        {{-- button hapus --}}
                                                        <button type="button" title="Hapus" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusArticle{{ $data->id }}">
                                                            <i class="feather icon-trash"></i>
                                                        </button>
                                                        {{-- button posting --}}
                                                        <button type="button" title="Posting" class="btn btn-success btn-sm" data-toggle="modal" data-target="#posting{{ $data->id }}">
                                                            <i class="feather icon-navigation"></i>
                                                        </button>
                                                    </td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Judul</th>
                                                    <th>Penulis</th>
                                                    <th>Konten</th>
                                                    <th>Tanggal Posting</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                    @else
                                    <p>Belum ada artikel</p>
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
@foreach ($article as $item)
{{-- Modal Hapus --}}
<div class="modal fade" id="hapusArticle{{ $item->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="exampleModalLabel">Hapus data yang dipilih</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/dashboard/article/{{ $item->title }}" method="POST" class="d-inline">
                @method('delete')
                @csrf
                <div class="modal-body">
                    <p>Apakah Anda yakin akan menghapus artikel <strong>{{ str_replace('_', ' ', $item->title) }}</strong>?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-danger">Hapus</button>
                </div>
            </form>
        </div>
    </div>
</div>

{{-- Modal Posting --}}
<div class="modal fade" id="posting{{ $item->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                @if ($item->posted == 0)
                <h5 class="modal-title" id="exampleModalLabel">Posting artikel yang dipilih</h5>
                @else
                <h5 class="modal-title" id="exampleModalLabel">Tarik artikel dari postingan</h5>
                @endif
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/dashboard/article/post/{{ $item->title }}" method="POST" class="d-inline">
                @csrf
                <div class="modal-body">
                    @if ($item->posted == 0)
                    <p>Apakah Anda yakin akan memposting artikel <strong>{{ str_replace('_', ' ', $item->title) }}</strong>?</p>
                    @else
                    <p>Apakah Anda yakin akan menarik postingan artikel <strong>{{ str_replace('_', ' ', $item->title) }}</strong>?</p>
                    @endif
                    <input type="hidden" name="id" value="{{ $item->id }}">
                    <input type="hidden" name="posted" value="{{ $item->posted }}">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Ya</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endforeach
@endsection