<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $url=asset("css/style.css");
        // dd($url);
        // $data=view('cat.index');
        // $data=redirect('/home');
        // dd($data);
        return view('cat.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        return view('cat.edit');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
    public function excel()
    {
        dd("cat print excel");
        // return view('cat.excel');
    }
}
