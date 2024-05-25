@extends('layout.template') @section('content')

<div class="pagetitle">
    <h1>Tambah Data Admin</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">Admin</li>
        <li class="breadcrumb-item"><a href="{{ route('admin') }}"></a>Data Admin</li>
        <li class="breadcrumb-item active">Tambah Data Admin</li>
      </ol>
    </nav>
</div><!-- End Page Title -->
<div class="col-lg-12">

    <div class="card">
      <div class="card-body"><br>
        <form class="row g-3" action="{{ route('insertAdmin') }}" method="POST">
        @csrf
        <div class="col-12">
            <label for="nama_admin" class="form-label">Nama Admin</label>
            <input type="text" class="form-control" id="nama_admin" name="nama_admin" required>
          </div>
          <div class="col-12">
            <label for="password" class="form-label">password</label>
            <input type="password" class="form-control" id="password" name="password" required>
          </div>
          <div class="col-12">
            <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
            <input type="text" class="form-control" id="jenis_kelamin" name="jenis_kelamin" required>
          </div>
          <div class="col-12">
            <label for="email" class="form-label">email</label>
            <input type="email" class="form-control" id="email" name="email" required>
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-primary float-left" style="margin-top: 20px;" >Simpan</button>
            <button type="reset" class="btn btn-secondary float-right" style="margin-top: 20px;">Reset</button>
          </div>
        </form>
      </div>
    </div>
@endsection