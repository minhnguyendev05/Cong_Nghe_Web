<?php
$pdo = new PDO("mysql:host=localhost;dbname=thuchanh1;charset=utf8", "root", "");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!isset($_FILES["csvfile"])) {
        die("Không có file.");
    }

    $tmp = $_FILES["csvfile"]["tmp_name"];
    if (!file_exists($tmp)) {
        die("Upload lỗi!");
    }

    if (($handle = fopen($tmp, "r")) !== false) {
        $headers = fgetcsv($handle); // Bỏ dòng header

        while (($data = fgetcsv($handle)) !== false) {
            $stmt = $pdo->prepare("
                INSERT INTO students (username, password, lastname, firstname, city, email, course1)
                VALUES (?, ?, ?, ?, ?, ?, ?)
            ");
            $stmt->execute($data);
        }

        fclose($handle);
    }

    echo "<h3>Import CSV thành công!</h3>";
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload CSV</title>
    <link rel="stylesheet" href="style.css">

<style>
    body { font-family: Arial; padding: 30px; background: #f2f4f7; }
    .upload-box {
        width: 450px;
        margin: auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        border: 1px solid #ddd;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    button {
        width: 100%;
        padding: 12px;
        background: #007bff;
        border: none;
        border-radius: 6px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover { background: #005fcc; }
</style>

</head>
<body>

<div class="upload-box">
    <h2>Upload File CSV</h2>
    <form method="POST" enctype="multipart/form-data">
        <input type="file" name="csvfile" required>
        <br><br>
        <button type="submit">Upload & Import</button>
    </form>
</div>

</body>
</html>
