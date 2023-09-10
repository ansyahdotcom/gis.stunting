<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;

class ArticleController extends Controller
{
    public function index(Request $request)
    {   
        return view('content/landingpage/page_article', [
            'article' => Article::where('posted', '=', '1')->latest()->paginate(9)
        ]);
    }
    
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {
        return view('content.main.article_show', [
            'article' => $article,
            'articles' => Article::where('posted', '=', '1')->latest()->limit(6)->get()
        ]);
    }
}
