<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>PHT Chương 5 - MVC</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>
    <h2>Thêm Sinh Viên Mới (Kiến trúc MVC)</h2>
    <form method="POST" action="{{ route('sinhvien.store') }}">
        @csrf
        Tên sinh viên: <input type="text" name="ten_sinh_vien" required>
        Email: <input type="email" name="email" required>

        <button type="submit">Thêm</button>
    </form>
    <h2>Danh Sách Sinh Viên (Kiến trúc MVC)</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Tên Sinh Viên</th>
            <th>Email</th>
            <th>Ngày Tạo</th>
        </tr>

        
        @foreach ($danhSachSV as $sv)
            <tr>
            <td> {{ $sv->id }}</td>
            <td> {{ $sv->ten_sinh_vien }}</td>
            <td> {{ $sv->email }}</td>
            <td> {{ $sv->created_at }}</td>
            </tr>
        @endforeach
    </table>
</body>

</html>