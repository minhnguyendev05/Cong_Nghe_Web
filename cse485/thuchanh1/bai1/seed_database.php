<?php
require("data_flowers.php");

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "flowers_db";

// Kết nối đến cơ sở dữ liệu
$conn = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

// Chèn dữ liệu vào bảng flowers
foreach ($data as $flower) {
    $name = $conn->real_escape_string($flower['name']);
    $description = $conn->real_escape_string($flower['description']);
    $images = $conn->real_escape_string(json_encode($flower['images']));

    $sql = "INSERT INTO flowers (name, description, images) VALUES ('$name', '$description', '$images')";

    if ($conn->query($sql) === TRUE) {
        echo "Thêm dữ liệu thành công: $name\n";
    } else {
        echo "Lỗi: " . $sql . "\n" . $conn->error;
    }
}

$conn->close();
?>
