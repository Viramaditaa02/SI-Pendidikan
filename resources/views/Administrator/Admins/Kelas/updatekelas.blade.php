@extends('layout.template') @section('content')

<div class="pagetitle">
    <h1>Ubah Data Kelas</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">Kelas</li>
        <li class="breadcrumb-item"><a href="{{ route('guru') }}"></a>Kelas</li>
        <li class="breadcrumb-item active">Ubah Data kelas</li>
      </ol>
    </nav>
</div><!-- End Page Title -->

<div class="col-lg-12">

    <div class="card">
      <div class="card-body"><br>
        <form class="row g-3" action="{{ route('updatekelas', $data->id) }}" method="POST">
        @csrf
          <div class="col-12">
            <label for="absensi" class="form-label">Absensi</label>
            <input type="text" class="form-control" id="absensi" name="absensi" value="{{ $data->absensi }}" required>
          </div>
          <div class="col-12">
            <label for="jam_pelajaran" class="form-label">jam pelajaran</label>
            <input type="text" class="form-control" id="jam_pelajaran" name="jam_pelajaran" value="{{ $data->jam_pelajaran }}" required>
          </div>
          <div class="col-12">
            <label for="id_guru" class="form-label">id guru</label>
            <input type="text" class="form-control" id="id_guru" name="id_guru" value="{{ $data->id_guru }}" required>
          </div>
           <div class="col-12">
            
          </div>
          <div class="text-center" style="margin-top: 20px;">
            <button type="submit" class="btn btn-success float-left">Update</button>
          </div>
        </form>
      </div>
    </div>
@endsection