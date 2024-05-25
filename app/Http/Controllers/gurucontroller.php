<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\gurus;
use Barryvdh\DomPDF\Facade\Pdf;

class gurucontroller extends Controller
{
    public function index(){
        $data = gurus::get(); 
        return view('Administrator/Admins/Gurus/Guru', compact('data'));
    }

    public function add(){
        return view('Administrator/Admins/Gurus/addGuru');
    }

    public function insertdata(Request $request){
        gurus::create($request->all());
        return redirect()->route('guru')->with('primary', 'Data Berhasil Ditambahkan!');
    }

    public function readdata($id){
        $data = gurus::find($id);
        return view('Administrator/Admins/Gurus/updateGuru' , compact('data'));
    }

    public function updatedata(Request $request, $id){
        $data = gurus::find($id);
        $data->update($request->all());
        return redirect()->route('guru')->with('success', 'Data Berhasil Diubah!');
    }

    public function deletedata($id){
        $data = gurus::find($id);
        $data->delete();
        return redirect()->route('guru')->with('danger', 'Data Berhasil Dihapus!');
    }

    public function exportpdf(){
        $data = gurus::all();
        $PDF = PDF::loadView('Administrator/Admins/Gurus/reportGuru', array('data' => $data));
        return $PDF->stream('data-guru.pdf');
    }
}
