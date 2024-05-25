@extends('layout.template') @section('content')

<div class="pagetitle">
    <h1>Tambah Data Kelas</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">Kelas</li>
        <li class="breadcrumb-item"><a href="{{ route('kelas') }}"></a>Data Kelas</li>
        <li class="breadcrumb-item active">Tambah Data Kelas</li>
      </ol>
    </nav>
</div><!-- End Page Title -->
<div class="col-lg-12">

    <div class="card">
      <div class="card-body"><br>
        <form class="row g-3" action="{{ route('insertkelas') }}" method="POST">
        @csrf
        <div class="col-12">
            <label for="id_guru" class="form-label">id guru</label>
              <select id="id_guru" class="form-control" name="id_guru" required>
                <option value="">-- Pilih --</option>
                  @foreach ($data_guru as $row)
                    <option value="{{ $row->id }}">{{ $row->nama_guru }}</option>
                  @endforeach
              </select>
        </div>
        <div class="col-12">
            <label for="absensi" class="form-label">Absensi</label>
            <input type="text" class="form-control" id="absensi" name="absensi" required>
          </div>
          <div class="col-12">
            <label for="jam_pelajaran" class="form-label">jam pelajaran</label>
            <input type="jam_pelajaran" class="form-control" id="jam_pelajaran" name="jam_pelajaran" required>
          </div>
          
          
          <div class="text-center">
            <button type="submit" class="btn btn-primary float-left" style="margin-top: 20px;" >Simpan</button>
            <button type="reset" class="btn btn-secondary float-right" style="margin-top: 20px;">Reset</button>
          </div>
        </form>
      </div>
    </div>
@endsection