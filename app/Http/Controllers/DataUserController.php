<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Hash;

class DataUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        if ($request->session()->get('status') != 'login'){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'petugas' ) {
            # code...
            return redirect('/dashboard');
        };
        $data= [
            'dataset' => User::all(),
            'user' => $request->session()->get('nama') 
        ];
        return view('content/main/data_user', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
        if ($request->session()->get('status') != 'login'){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'petugas' ) {
            # code...
            return redirect('/dashboard');
        };
        $model           = new User;
        return view('content/main/tambah_data_user', compact('model'));
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
        $model = new User;
        $model->nama        = $request->nama_user;
        $model->jabatan     = $request->jabatan;
        $model->username    = $request->username;
        $password           = $request->password;
        $model->password    = Hash::make($password);
        $save = $model->save();
        if ($save) {
            $request->session()->flash('message', 'save');
            return redirect('data-user');
        } else {
            $request->session()->flash('message', 'failsave');
            return redirect('data-user/create');
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
        if ($request->session()->get('status') != 'login'){
            return redirect('/');
        }
        else if ($request->session()->get('jabatan') == 'petugas' ) {
            # code...
            return redirect('/dashboard');
        };
        $model           = User::find($id);;
        return view('content/main/edit_data_user', compact('model'));
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
        $model = User::find($id);
        $model->nama        = $request->nama;
        $model->jabatan     = $request->jabatan;
        $model->username    = $request->username;
        $password           = $request->password;
        $model->password    = Hash::make($password);
        $save = $model->save();
        if ($save) {
            $request->session()->flash('message', 'edit');
            return redirect('data-user');
        } else {
            $request->session()->flash('message', 'failedit');
            return redirect('data-user');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, Request $request)
    {
        // delete data
        $delete = User::destroy($id);
        if($delete) {
            $request->session()->flash('message', 'delete');
            return redirect('/data-user');
        } else {
            $request->session()->flash('message', 'notdelete');
            return redirect('/data-user');
        }
    }
}
