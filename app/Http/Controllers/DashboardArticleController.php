<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\User;
use Illuminate\Support\Facades\Storage;

class DashboardArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // cek login
        if ($request->session()->get('status') != 'login') {
            return redirect('/');
        } else if ($request->session()->get('jabatan') == 'admin') {
            # code...
            return redirect('/dashboard-admin');
        };
        $user_id = $request->session()->get('id');
        return view('content.main.article', [
            'article' => Article::latest()->where('user_id','=', $user_id)->get()
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

        return view('content.main.article_add', [
            'user' => User::all()
        ]);
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
            'title' => 'required',
            'user_id' => 'required',
            'content' => 'required',
            'img' => 'image|file|max:3000'
        ]);
        // save image
        if($request->file('img')) {
            $validatedData['img'] = $request->file('img')->store('img_article');
        }
        // save data
        $validatedData['title'] = str_replace(' ', '_', $request->title);
        $save = Article::create($validatedData);
        if ($save) {
            $request->session()->flash('message', 'save');
            return redirect('dashboard/article');
        } else {
            $request->session()->flash('message', 'failsave');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Article $article)
    {
        // cek login
        if ($request->session()->get('status') != 'login') {
            return redirect('/');
        } else if ($request->session()->get('jabatan') == 'admin') {
            return redirect('/dashboard-admin');
        };

        return view('content.main.article_show', [
            'article' => $article,
            'articles' => Article::all()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        return view('content.main.article_edit', [
            'article' => $article,
            'user' => User::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        // validasi data
        $validatedData = $request->validate([
            'title' => 'required',
            'user_id' => 'required',
            'content' => 'required',
            'img' => 'image|file|max:3000'
        ]);

        // update image
        if($request->file('img')) {
            // delete old image
            if($request->oldimg) {
                Storage::delete($request->oldimg);
            }
            $validatedData['img'] = $request->file('img')->store('img_article');
        }
        $validatedData['title'] = str_replace(' ', '_', $request->title);

        // update data
        $save = Article::where('id', $request->id)->update($validatedData);
        if ($save) {
            $request->session()->flash('message', 'edit');
            return redirect('dashboard/article');
        } else {
            $request->session()->flash('message', 'failedit');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Article $article)
    {
        // delete image
        if($article->img) {
            Storage::delete($article->img);
        }
        // delete data
        $delete = Article::destroy($article->id);
        if($delete) {
            $request->session()->flash('message', 'delete');
            return redirect('/dashboard/article');
        } else {
            $request->session()->flash('message', 'notdelete');
            return redirect('/dashboard/article');
        }
    }

    public function post(Request $request) {
        // cek posting atau tarik
        if($request->posted == 0) {
            // isi data
            $post = [
                'posted' => 1,
                'published_at' => date('Y-m-d H:i:s')
            ];
        } else {
            $post = [
                'posted' => 0,
                'published_at' => null
            ];
        }
        // update
        $save = Article::where('id', $request->id)->update($post);
        if ($save) {
            $request->session()->flash('message', 'save');
            return redirect('dashboard/article');
        } else {
            $request->session()->flash('message', 'failedPost');
        }
    }
}
