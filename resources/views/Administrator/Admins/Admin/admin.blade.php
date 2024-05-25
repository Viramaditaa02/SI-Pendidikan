@extends('layout.template') @section('content')

<div class="pagetitle">
    <h1>Data Admin</h1>
</div><!-- End Page Title -->
<div class="container-fluid">
    <div class="card">
      <div class="card-header">
        <div class="buttons">
        <a href="{{ route('addAdmin') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Data</a>
        <a href="{{ route('pdfAdmin') }}" target="_blank" class="btn btn-danger"><i class="fas fa-print"></i> Cetak PDF</a>
      </div>
    </div>
    <div class="row">
        <div class="col-12">
                <div class="card-body table-responsive">
                    <table class='table datatable table-striped table-bordered' id="table1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Admin</th>
                                <th>Kata Sandi</th>
                                <th>Jenis Kelamin</th>
                                <th>Email</th>
                                <th>action</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            @if (count($data) > 0)
                            @foreach ($data as $item=>$row)
                            <tr>
                                    <td style="text-align: center;">{{ $item+1 }}</td>
                                    <td>{{ $row->nama_admin}}</td>
                                    <td>{{ $row->password }}</td>
                                    <td>{{ $row->jenis_kelamin }}</td>
                                    <td>{{ $row->email }}</td>
                                    
                                    <td>
                                        <a href="{{ route('readAdmin', $row->id) }}" class="btn icon btn-success"><i>Edit</i></a>
                                        <a href="{{ route('deleteAdmin', $row->id) }}" class="btn icon btn-danger"><i>Hapus</i></i></a>
                                    </td>
                            </tr>
                            @endforeach
                            @else
                                <tr>
                                    <td colspan="7"><p class="text text-center">No results found.</p></td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>
    <!-- /.row -->
</div>
@endsection