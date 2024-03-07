<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['cats'] = DB::select('SELECT * FROM cats');
        $data['dogs'] = DB::select('SELECT * FROM dogs');
        $data['test'] = '123';
        // dd($data);
        return view('cat.index', ['data' => $data]);
        // return view('cat.index', ['data' => $data, 'test' => $test]);



        // DB::table('cats')->insert([
        //     'name' => 'kai',
        //     'address' => 999
        // ]);



        // return view('user.index', ['users' => $users]);


        // $url = route('cats.edit', ['id' => 1]); 
        // $url = route('cats.edit', ['cat' => 1]);
        // dd($url);


        return view('cat.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        return view('cat.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request);
        $input = $request->except('_token');
        // die();
        // dd($input);
        // dd('hello cat store');
        return redirect()->route('cats.index');
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
        dd("Hello $id");
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
        dd('hello cats excel');
    }
}
