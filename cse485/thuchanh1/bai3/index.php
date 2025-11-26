<?php
$pdo = new PDO("mysql:host=localhost;dbname=thuchanh1;charset=utf8", "root", "");

$students = $pdo->query("SELECT * FROM students")->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sinh viên</title>

<style>
    body { font-family: Arial; padding: 30px; background: #f2f4f7; }
    h2 { text-align: center; margin-bottom: 25px; }

    table {
        width: 100%;
        max-width: 1100px;
        margin: auto;
        border-collapse: collapse;
        background: white;
        box-shadow: 0 2px 12px rgba(0,0,0,0.1);
    }

    th {
        background: #007bff;
        color: white;
        padding: 12px;
        text-align: left;
    }

    td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {
        background: #eef5ff;
    }
</style>

</head>
<body>

<h2>Danh sách sinh viên</h2>

<table>
    <thead>
        <tr>
            <th>Username</th>
            <th>Password</th>
            <th>Last name</th>
            <th>First name</th>
            <th>City</th>
            <th>Email</th>
            <th>Course</th>
        </tr>
    </thead>

    <tbody>
        <?php if(count($students) === 0): ?>
            <p>Không có sinh viên nào <a href="upload.php">Upload dữ liệu ngay</a></p>
        <?php else: ?>
        <?php foreach ($students as $s): ?>
        <tr>
            <td><?= htmlspecialchars($s["username"]) ?></td>
            <td><?= htmlspecialchars($s["password"]) ?></td>
            <td><?= htmlspecialchars($s["lastname"]) ?></td>
            <td><?= htmlspecialchars($s["firstname"]) ?></td>
            <td><?= htmlspecialchars($s["city"]) ?></td>
            <td><?= htmlspecialchars($s["email"]) ?></td>
            <td><?= htmlspecialchars($s["course1"]) ?></td>
        </tr>
        <?php endforeach; ?>
        <?php endif; ?>
    </tbody>
</table>

</body>
</html>
