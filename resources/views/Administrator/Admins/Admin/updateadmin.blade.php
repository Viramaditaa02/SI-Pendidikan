@extends('layout.template') @section('content')

<div class="pagetitle">
    <h1>Ubah Data Admin</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">Admin</li>
        <li class="breadcrumb-item"><a href="{{ route('admin') }}"></a>Admin</li>
        <li class="breadcrumb-item active">Ubah Data Admin</li>
      </ol>
    </nav>
</div><!-- End Page Title -->

<div class="col-lg-12">

    <div class="card">
      <div class="card-body"><br>
        <form class="row g-3" action="{{ route('updateAdmin', $data->id) }}" method="POST">
        @csrf
          <div class="col-12">
            <label for="nama_admin" class="form-label">Nama Admin</label>
            <input type="text" class="form-control" id="nama_admin" name="nama_admin" value="{{ $data->nama_admin }}" required>
          </div>
          <div class="col-12">
            <label for="password" class="form-label">password</label>
            <input type="text" class="form-control" id="password" name="password" value="{{ $data->password }}" required>
          </div>
          <div class="col-12">
            <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
            <input type="text" class="form-control" id="jenis_kelamin" name="jenis_kelamin" value="{{ $data->jenis_kelamin }}" required>
          </div>
           <div class="col-12">
            <label for="email" class="form-label">Email</label>
            <input type="text" class="form-control" id="email" name="email" value="{{ $data->email }}" required>
          </div>
          <div class="text-center" style="margin-top: 20px;">
            <button type="submit" class="btn btn-success float-left">Update</button>
          </div>
        </form>
      </div>
    </div>
@endsection