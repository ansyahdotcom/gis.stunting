<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\HasilZscore;

class PetasebaranController extends Controller
{
    //
    public function index(Request $request){
        if ($request->session()->get('status') == 'login' && $request->session()->get('jabatan') == 'petugas' ){
            return redirect('/dashboard');
        };
        // $data['desa'] = DB::table('kecamatans')->get();
        $data['kcm']  =  HasilZscore::select(DB::raw("nama_kcm, longtd_kcm, latd_kcm,
                COUNT(CASE WHEN `bbpu` = 'Berat Badan Sangat Kurang' THEN 1 END) AS bb_sangat_kurang,
                COUNT(CASE WHEN `bbpu` = 'Berat Badan Kurang' THEN 1 END) AS bb_kurang,
                COUNT(CASE WHEN `bbpu` = 'Berat Badan Normal' THEN 1 END) AS bb_normal,
                COUNT(CASE WHEN `bbpu` = 'Risiko Berat Badan Lebih' THEN 1 END) AS bb_lebih,
                COUNT(CASE WHEN `tbpu` = 'Sangat Pendek' THEN 1 END) AS tb_sangat_pendek,
                COUNT(CASE WHEN `tbpu` = 'Pendek' THEN 1 END) AS tb_pendek,
                COUNT(CASE WHEN `tbpu` = 'Normal' THEN 1 END) AS tb_normal,
                COUNT(CASE WHEN `tbpu` = 'Tinggi' THEN 1 END) AS tb_tinggi,
                COUNT(CASE WHEN `bbptb` = 'Gizi Buruk' THEN 1 END) AS bbtb_gizi_buruk,
                COUNT(CASE WHEN `bbptb` = 'Gizi Kurang' THEN 1 END) AS bbtb_gizi_kurang,
                COUNT(CASE WHEN `bbptb` = 'Gizi Baik / Normal' THEN 1 END) AS bbtb_gizi_baik,
                COUNT(CASE WHEN `bbptb` = 'Berisiko Gizi Lebih' THEN 1 END) AS bbtb_risiko_gizi_lebih,
                COUNT(CASE WHEN `bbptb` = 'Gizi Lebih' THEN 1 END) AS bbtb_gizi_lebih,
                COUNT(CASE WHEN `bbptb` = 'Obesitas' THEN 1 END) AS bbtb_obesitas,
                COUNT(CASE WHEN `imtpu` = 'Gizi Buruk' THEN 1 END) AS imtu_gizi_buruk,
                COUNT(CASE WHEN `imtpu` = 'Gizi Kurang' THEN 1 END) AS imtu_gizi_kurang,
                COUNT(CASE WHEN `imtpu` = 'Gizi Baik / Normal' THEN 1 END) AS imtu_gizi_baik,
                COUNT(CASE WHEN `imtpu` = 'Berisiko Gizi Lebih' THEN 1 END) AS imtu_risiko_gizi_lebih,
                COUNT(CASE WHEN `imtpu` = 'Gizi Lebih' THEN 1 END) AS imtu_gizi_lebih,
                COUNT(CASE WHEN `imtpu` = 'Obesitas' THEN 1 END) AS imtu_obesitas
                "))
            ->join('tbl_anak', 'hasil_zscore.id_anak', '=', 'tbl_anak.id_anak')
            ->join('kecamatans', 'tbl_anak.id_kcm', '=', 'kecamatans.id_kcm')
            ->join('users', 'hasil_zscore.id', '=', 'users.id')
            ->groupby('nama_kcm', 'longtd_kcm', 'latd_kcm')
            ->get();
        return view('content/main/peta-sebaran_luar', $data);
    }
    
    public function peta(Request $request){
        if ($request->session()->get('status') != 'login' ){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'admin' ) {
            # code...
            return redirect('/dashboard-admin');
        };
        $data['kcm']  = HasilZscore::select(DB::raw("nama_kcm, longtd_kcm, latd_kcm,
                                    COUNT(CASE WHEN `bbpu` = 'Berat Badan Sangat Kurang' THEN 1 END) AS bb_sangat_kurang,
                                    COUNT(CASE WHEN `bbpu` = 'Berat Badan Kurang' THEN 1 END) AS bb_kurang,
                                    COUNT(CASE WHEN `bbpu` = 'Berat Badan Normal' THEN 1 END) AS bb_normal,
                                    COUNT(CASE WHEN `bbpu` = 'Risiko Berat Badan Lebih' THEN 1 END) AS bb_lebih,
                                    COUNT(CASE WHEN `tbpu` = 'Sangat Pendek' THEN 1 END) AS tb_sangat_pendek,
                                    COUNT(CASE WHEN `tbpu` = 'Pendek' THEN 1 END) AS tb_pendek,
                                    COUNT(CASE WHEN `tbpu` = 'Normal' THEN 1 END) AS tb_normal,
                                    COUNT(CASE WHEN `tbpu` = 'Tinggi' THEN 1 END) AS tb_tinggi,
                                    COUNT(CASE WHEN `bbptb` = 'Gizi Buruk' THEN 1 END) AS bbtb_gizi_buruk,
                                    COUNT(CASE WHEN `bbptb` = 'Gizi Kurang' THEN 1 END) AS bbtb_gizi_kurang,
                                    COUNT(CASE WHEN `bbptb` = 'Gizi Baik / Normal' THEN 1 END) AS bbtb_gizi_baik,
                                    COUNT(CASE WHEN `bbptb` = 'Berisiko Gizi Lebih' THEN 1 END) AS bbtb_risiko_gizi_lebih,
                                    COUNT(CASE WHEN `bbptb` = 'Gizi Lebih' THEN 1 END) AS bbtb_gizi_lebih,
                                    COUNT(CASE WHEN `bbptb` = 'Obesitas' THEN 1 END) AS bbtb_obesitas,
                                    COUNT(CASE WHEN `imtpu` = 'Gizi Buruk' THEN 1 END) AS imtu_gizi_buruk,
                                    COUNT(CASE WHEN `imtpu` = 'Gizi Kurang' THEN 1 END) AS imtu_gizi_kurang,
                                    COUNT(CASE WHEN `imtpu` = 'Gizi Baik / Normal' THEN 1 END) AS imtu_gizi_baik,
                                    COUNT(CASE WHEN `imtpu` = 'Berisiko Gizi Lebih' THEN 1 END) AS imtu_risiko_gizi_lebih,
                                    COUNT(CASE WHEN `imtpu` = 'Gizi Lebih' THEN 1 END) AS imtu_gizi_lebih,
                                    COUNT(CASE WHEN `imtpu` = 'Obesitas' THEN 1 END) AS imtu_obesitas
                                    "))
                                ->join('tbl_anak', 'hasil_zscore.id_anak', '=', 'tbl_anak.id_anak')
                                ->join('kecamatans', 'tbl_anak.id_kcm', '=', 'kecamatans.id_kcm')
                                ->join('users', 'hasil_zscore.id', '=', 'users.id')
                                ->groupby('nama_kcm', 'longtd_kcm', 'latd_kcm')
                                ->get();
        return view('content/main/peta-sebaran', $data);
    }
}
