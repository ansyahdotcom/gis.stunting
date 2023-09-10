<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Video;

class VideoController extends Controller
{
    public function index()
    {   
        return view('content/landingpage/page_video', [
            'video' => Video::where('posted', '=', '1')->latest()->paginate(9)
        ]);
    }
}
