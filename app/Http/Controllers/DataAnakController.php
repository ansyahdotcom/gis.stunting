<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DataAnak;
use App\Models\DataDesa;
use App\Models\Kecamatan;
use Illuminate\Support\Facades\DB;

class DataAnakController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        if ($request->session()->get('status') != 'login' ){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'admin' ) {
            # code...
            return redirect('/dashboard-admin');
        };
        $data['dataset'] =  DataAnak::join('kecamatans', 'tbl_anak.id_kcm', '=', 'kecamatans.id_kcm')
                ->select('tbl_anak.*', 'kecamatans.nama_kcm')    
                ->get();
        return view("content/main/data_anak", $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request){
        if ($request->session()->get('status') != 'login' ){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'admin' ) {
            # code...
            return redirect('/dashboard-admin');
        };
        $data = [
            'kecamatan' => Kecamatan::all()
        ];
        return view("content/main/tambah_anak", $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $model = new DataAnak;
        $jenis_kelamin      = $request->jenis_kelamin;
        
        date_default_timezone_set('Asia/Jakarta');
        $query = DataAnak::select(DB::raw("max(RIGHT(tbl_anak.id_anak,3)) As id_anak"))
        ->where('jenis_kelamin', $jenis_kelamin)
        ->get();
        if (intVal($query[0]->id_anak) > 0) {
            # code...
            $id = intVal($query[0]->id_anak) + 1;
        } else {
            $id = 1;
        }
        $batas = str_pad($id, 3, "0", STR_PAD_LEFT);
        $id_anak = $jenis_kelamin.date("Ymd"). $batas;
        
        $model->id_anak             = $id_anak;
        $model->nama_anak           = $request->nama_anak;
        $model->nama_ayah           = $request->nama_ayah;
        $model->nama_ibu            = $request->nama_ibu;
        $model->jenis_kelamin       = $jenis_kelamin;
        $model->tgl_lahir           = $request->tgl_lahir;
        $model->id_kcm              = $request->id_kcm;
        $model->kelurahan           = $request->kelurahan;
        $model->rt                  = $request->rt;
        $model->rw                  = $request->rw;
        $model->posyandu            = $request->posyandu;


        $insert = $model->save();
        if ($insert) {
            $request->session()->flash('message', 'save');
            return redirect('dataanak');
        } else {
            $request->session()->flash('message', 'failsave');
            return redirect('dataanak/create');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        //
        if ($request->session()->get('status') != 'login' ){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'admin' ) {
            # code...
            return redirect('/dashboard-admin');
        };
        $data['anak']       = DataAnak::find($id);
        $data['kcm']        = Kecamatan::all();
        return view("content/main/edit_anak", $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $model              = DataAnak::find($id);
        $jenis_kelamin      = $request->jenis_kelamin;
        $jk_ori             = $request->jk_ori;
        date_default_timezone_set('Asia/Jakarta');
        $query = DataAnak::select(DB::raw("max(RIGHT(tbl_anak.id_anak,3)) As id_anak"))
        ->where('jenis_kelamin', $jenis_kelamin)
        ->get();
        if (intVal($query[0]->id_anak) > 0) {
            # code...
            $id = intVal($query[0]->id_anak) + 1;
        } else {
            $id = 1;
        }
        $batas = str_pad($id, 3, "0", STR_PAD_LEFT);
        $id_anak = $jenis_kelamin.date("Ymd"). $batas;
        
        if ($jk_ori != $jenis_kelamin) {
            # code...
            $model->id_anak         = $id_anak;
        }
        $model->nama_anak           = $request->nama_anak;
        $model->nama_ayah           = $request->nama_ayah;
        $model->nama_ibu            = $request->nama_ibu;
        $model->jenis_kelamin       = $jenis_kelamin;
        $model->tgl_lahir           = $request->tgl_lahir;
        $model->id_kcm              = $request->id_kcm;
        $model->kelurahan           = $request->kelurahan;
        $model->rt                  = $request->rt;
        $model->rw                  = $request->rw;
        $model->posyandu            = $request->posyandu;

        $insert = $model->save();
        if ($insert) {
            $request->session()->flash('message', 'edit');
            return redirect('dataanak');
        } else {
            $request->session()->flash('message', 'failedit');
            return redirect('dataanak/'.$id.'/edit');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id_anak)
    {
        // delete data
        $delete = DB::table('tbl_anak')->where('id_anak', '=', $id_anak)->delete();
        if($delete) {
            $request->session()->flash('message', 'delete');
            return redirect('/dataanak');
        } else {
            $request->session()->flash('message', 'notdelete');
            return redirect('/dataanak');
        }
    }
}
