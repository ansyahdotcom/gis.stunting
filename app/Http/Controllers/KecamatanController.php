<?php

namespace App\Http\Controllers;

use App\Models\Kecamatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class KecamatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // cek login
        if ($request->session()->get('status') != 'login' ){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'admin' ) {
            # code...
            return redirect('/dashboard-admin');
        };
        return view("content/main/kecamatan", [
            'kecamatan' => Kecamatan::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // cek login
        if ($request->session()->get('status') != 'login') {
            return redirect('/');
        } else if ($request->session()->get('jabatan') == 'admin') {
            return redirect('/dashboard-admin');
        };

        return view('content.main.kecamatan_add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // validasi data
        $validatedData = $request->validate([
            'nama_kcm' => 'required',
            'longtd_kcm' => 'required',
            'latd_kcm' => 'required',
        ]);
        $save = Kecamatan::create($validatedData);
        if ($save) {
            $request->session()->flash('message', 'save');
            return redirect('kecamatan');
        } else {
            $request->session()->flash('message', 'failsave');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Kecamatan $kecamatan)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Kecamatan $kecamatan)
    {
        return view('content.main.kecamatan_edit', [
            'kcm' => $kecamatan,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        // validasi data
        $validatedData = $request->validate([
            'nama_kcm' => 'required',
            'longtd_kcm' => 'required',
            'latd_kcm' => 'required',
        ]);
        // update data
        $save = Kecamatan::where('id_kcm', $request->id_kcm)->update($validatedData);
        if ($save) {
            $request->session()->flash('message', 'edit');
            return redirect('kecamatan');
        } else {
            $request->session()->flash('message', 'failedit');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Kecamatan $kecamatan)
    {
        // delete data
        $delete = DB::table('kecamatans')->where('id_kcm', '=', $kecamatan->id_kcm)->delete();
        if($delete) {
            $request->session()->flash('message', 'delete');
            return redirect('/kecamatan');
        } else {
            $request->session()->flash('message', 'notdelete');
            return redirect('/kecamatan');
        }
    }
}
