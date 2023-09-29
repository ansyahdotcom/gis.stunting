<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\HasilZscore;

class DataZscoreController extends Controller
{
    //
    public function index(Request $request){
        if ($request->session()->get('status') != 'login' ){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'admin' ) {
            # code...
            return redirect('/dashboard-admin');
        };
        // return view('contents/main/analisis');
        $data['zscore'] = HasilZscore::select(DB::raw('tbl_anak.id_anak AS id_anak,users.nama AS nama_petugas,tbl_anak.nama_anak AS nama_anak,tbl_anak.nama_ayah AS nama_ayah,tbl_anak.nama_ibu AS nama_ibu,tbl_anak.jenis_kelamin AS jenis_kelamin,hasil_zscore.umur AS umur,hasil_zscore.tanggal AS tanggal,kecamatans.nama_kcm AS nama_kcm,kecamatans.longtd_kcm AS longtd_kcm,kecamatans.latd_kcm AS latd_kcm,hasil_zscore.bb AS bb,hasil_zscore.tb AS tb,hasil_zscore.imt AS imt,hasil_zscore.z_bbpu AS z_bbpu,hasil_zscore.bbpu AS bbpu,hasil_zscore.z_tbpu AS z_tbpu,hasil_zscore.tbpu AS tbpu,hasil_zscore.z_bbptb AS z_bbptb,hasil_zscore.bbptb AS bbptb,hasil_zscore.z_imtpu AS z_imtpu,hasil_zscore.imtpu AS imtpu'))
        ->join('tbl_anak', 'hasil_zscore.id_anak', '=', 'tbl_anak.id_anak')
        ->join('kecamatans', 'tbl_anak.id_kcm', '=', 'kecamatans.id_kcm')
        ->join('users', 'hasil_zscore.id', '=', 'users.id')
        ->get();
        return view('content/main/data_riwayat', $data);
    }
}
