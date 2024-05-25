<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\kelas;
use App\Models\gurus;
use Barryvdh\DomPDF\Facade\Pdf;

class kelasController extends Controller
{
    public function index(){
        $data = kelas::get(); 
        return view('Administrator/Admins/Kelas/Kelas', compact('data'));
    }

    public function add(){
        $data_guru = gurus::get();
        return view('Administrator/Admins/Kelas/addKelas', compact( 'data_guru'));
    }

    public function insertdata(Request $request){
        kelas::create($request->all());
        return redirect()->route('kelas')->with('primary', 'Data Berhasil Ditambahkan!');
    }

    public function readdata($id){
        $data = kelas::find($id);
        return view('Administrator/Admins/Kelas/Kelas/updatekelas' , compact('data'));
    }

    public function updatedata(Request $request, $id){
        $data = kelas::find($id);
        $data->update($request->all());
        return redirect()->route('kealas')->with('success', 'Data Berhasil Diubah!');
    }

    public function deletedata($id){
        $data = kelas::find($id);
        $data->delete();
        return redirect()->route('kelas')->with('danger', 'Data Berhasil Dihapus!');
    }

    public function exportpdf(){
        $data = kelas::all();
        $PDF = PDF::loadView('Administrator/Admins/Kelas/reportkelas', array('data' => $data));
        return $PDF->stream('data-kelas.pdf');
    }
}
