<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Video;
use Illuminate\Support\Facades\Storage;

class DashboardVideoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->session()->get('status') != 'login') {
            return redirect('/');
        } else if ($request->session()->get('jabatan') == 'admin') {
            # code...
            return redirect('/dashboard-admin');
        };

        return view('content.main.video', [
            'video' => Video::latest()->get()
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

        return view('content.main.video_add', [
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
            'thumbnail' => 'required|image|file|max:3000|mimes:jpeg,png,jpg',
            'video_file' => 'file|max:50000|mimes:mp4,mkv',
        ]);
        $validatedData['title'] = str_replace(' ', '_', $request->title);
        $validatedData['video_link'] = $request->video_link;

        // get value from uploaded file
        $video_link = $request->video_link;
        $video_file = $request->file('video_file');

        // validasi video
        // jika semua sumber kosong
        if($video_file == NULL && $video_link == NULL) {
            $request->session()->flash('message', 'notNullVideo');
            return redirect('/dashboard/video/create');

        // jika yang berisi hanya video file
        } else if($video_file != NULL && $video_link == NULL) {
            // get name from file video
            $video_file = $request->file('video_file')->getClientOriginalName();
            // save thumbnail video to storage
            if($request->file('thumbnail')) {
                $validatedData['thumbnail'] = $request->file('thumbnail')->store('thumbnail_video');
            }
            // save file video to storage
            if($request->file('video_file')) {
                $validatedData['video_file'] = $request->file('video_file')->store('video_file');
            }
            
            // save data
            $save = Video::create($validatedData);
            if ($save) {
                $request->session()->flash('message', 'save');
                return redirect('dashboard/video');
            } else {
                $request->session()->flash('message', 'failsave');
                return redirect('/dashboard/video/create');
            }

        // jika yang berisi hanya link video
        } else if($video_file == NULL && $video_link != NULL) {
            // save thumbnail video to storage
            if($request->file('thumbnail')) {
                $validatedData['thumbnail'] = $request->file('thumbnail')->store('thumbnail_video');
            }

            // save data
            $save = Video::create($validatedData);
            if ($save) {
                $request->session()->flash('message', 'save');
                return redirect('dashboard/video');
            } else {
                $request->session()->flash('message', 'failsave');
                return redirect('/dashboard/video/create');
            }

        // jika berisi keduanya
        } else if($video_link != NULL && $video_file != NULL) {
            $request->session()->flash('message', 'failedSaveVideo');
            return redirect('/dashboard/video/create');

        // jika gagal
        } else {
            $request->session()->flash('message', 'failsave');
            return redirect('/dashboard/video/create');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Video $video)
    {
        // cek login
        if ($request->session()->get('status') != 'login') {
            return redirect('/');
        } else if ($request->session()->get('jabatan') == 'admin') {
            return redirect('/dashboard-admin');
        };
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function edit(Video $video)
    {
        return view('content.main.video_edit', [
            'video' => $video
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Video $video)
    {
        // validasi data
        $validatedData = $request->validate([
            'title' => 'required',
            'thumbnail' => 'image|file|max:3000|mimes:jpeg,png,jpg',
        ]);
        // isi title di $validatedData
        $validatedData['title'] = str_replace(' ', '_', $request->title);
        // cek data
        $where = Video::where('id', '=', $request->id)->limit(1)->get();
        foreach ($where as $wh) {
            $video_link = $wh->video_link;
            $video_file = $wh->video_file;
        }

        // JIKA ADA 1 VIDEO DENGAN 2 SUMBER
        if($request->video_link != null && $request->video_file != null) {
            $request->session()->flash('message', 'failedSaveVideo');
            return redirect('/dashboard/video/' . $video->title . '/edit');

        // JIKA SUMBER VIDEO DARI LINK
        } elseif ($request->video_link != $video_link && $request->video_file == null) {
            // HAPUS FILE VIDEO JIKA ADA
            if($request->old_video_file) {
                Storage::delete($request->old_video_file);
            }
            $validatedData['video_file'] = null;
            $validatedData['video_link'] = $request->video_link;

            // update image
            if($request->file('thumbnail')) {
                // delete old image
                if($request->old_thumbnail) {
                    Storage::delete($request->old_thumbnail);
                }
                $validatedData['thumbnail'] = $request->file('thumbnail')->store('thumbnail_video');
            }

            // save data
            $save = Video::where('id', $request->id)->update($validatedData);
            if ($save) {
                $request->session()->flash('message', 'edit');
                return redirect('dashboard/video');
            } else {
                $request->session()->flash('message', 'failedit');
                return redirect('/dashboard/video/' . $video->title . '/edit');
            }

        // JIKA SUMBER VIDEO DARI FILE
        } elseif ($request->video_link == null && $request->video_file != $video_file) {
            // update video
            if($request->file('video_file')) {
                // delete old video
                if($request->old_video_file) {
                    Storage::delete($request->old_video_file);
                }
                $validatedData['video_file'] = $request->file('video_file')->store('video_file');
                $validatedData['video_link'] = null;
            }

            // update image
            if($request->file('thumbnail')) {
                // delete old image
                if($request->old_thumbnail) {
                    Storage::delete($request->old_thumbnail);
                }
                $validatedData['thumbnail'] = $request->file('thumbnail')->store('thumbnail_video');
            }

            // save data
            $save = Video::where('id', $request->id)->update($validatedData);
            if ($save) {
                $request->session()->flash('message', 'edit');
                return redirect('dashboard/video');
            } else {
                $request->session()->flash('message', 'failedit');
                return redirect('/dashboard/video/' . $video->title . '/edit');
            }

        // JIKA HANYA MENGUBAH JUDUL DAN THUMBNAIL
        } else {
            // update image
            if($request->file('thumbnail')) {
                // delete old image
                if($request->old_thumbnail) {
                    Storage::delete($request->old_thumbnail);
                }
                $validatedData['thumbnail'] = $request->file('thumbnail')->store('thumbnail_video');
            }

            $save = Video::where('id', $request->id)->update($validatedData);
            if ($save) {
                $request->session()->flash('message', 'edit');
                return redirect('dashboard/video');
            } else {
                $request->session()->flash('message', 'failedit');
                return redirect('/dashboard/video/' . $video->title . '/edit');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Video  $video
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Video $video)
    {
        // delete thumbnail
        if($video->thumbnail) {
            Storage::delete($video->thumbnail);
        }
        // delete video_file
        if($video->video_file) {
            Storage::delete($video->video_file);
        }

        // delete data
        $delete = Video::destroy($video->id);
        if($delete) {
            $request->session()->flash('message', 'delete');
            return redirect('/dashboard/video');
        } else {
            $request->session()->flash('message', 'notdelete');
            return redirect('/dashboard/video');
        }
    }

    public function post(Request $request) {
        // cek posting atau tarik
        if($request->posted == 0) {
            // isi data
            $post = [
                'posted' => 1
            ];
        } else {
            $post = [
                'posted' => 0
            ];
        }
        // update
        $save = Video::where('id', $request->id)->update($post);
        if ($save) {
            $request->session()->flash('message', 'save');
            return redirect('dashboard/video');
        } else {
            $request->session()->flash('message', 'failedPost');
        }
    }
}
