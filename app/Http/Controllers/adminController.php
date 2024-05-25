<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\admins;
use Barryvdh\DomPDF\Facade\Pdf;

class adminController extends Controller
{
    public function index(){
        $data = admins::get(); 
        return view('Administrator/Admins/Admin/Admin', compact('data'));
    }

    public function add(){
        return view('Administrator/Admins/Admin/addAdmin');
    }

    public function insertdata(Request $request){
        admins::create($request->all());
        return redirect()->route('admin')->with('primary', 'Data Berhasil Ditambahkan!');
    }

    public function readdata($id){
        $data = admins::find($id);
        return view('Administrator/Admins/Admin/updateAdmin' , compact('data'));
    }

    public function updatedata(Request $request, $id){
        $data = admins::find($id);
        $data->update($request->all());
        return redirect()->route('admin')->with('success', 'Data Berhasil Diubah!');
    }

    public function deletedata($id){
        $data = admins::find($id);
        $data->delete();
        return redirect()->route('admin')->with('danger', 'Data Berhasil Dihapus!');
    }

    public function exportpdf(){
        $data = admins::all();
        $PDF = PDF::loadView('Administrator/Admins/Admin/reportAdmin', array('data' => $data));
        return $PDF->stream('data-admin.pdf');
    }
}
