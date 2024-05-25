<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Data Guru</title>

    <style>
        body {
            box-sizing: border-box;
            font-size: 16px;
        }
        h1 {
            text-align: center;
        }
        table {
            box-sizing: border-box;
            border: 2px solid black;
            border-collapse: collapse;
            width: 100%;
        }
        thead {
            background-color: green;
            color: white;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            text-align: left;
            padding: 10px;
        }
        .center {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Data Guru</h1>
    <table align="center">
        <thead>
            <tr>
                <th class="center">No</th>
                                <th>Nama Guru</th>
                                <th>Kata Sandi</th>
                                <th>jenis kelamin</th>
                                <th>Email</th>
              
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item=>$row)
                <tr>
                    <td class="center">{{ $item+1 }}</td>
                    <td>{{ $row->nama_guru}}</td>
                    <td>{{ $row->password }}</td>
                    <td>{{ $row->jenis_kelamin }}</td>
                    <td>{{ $row->email }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>