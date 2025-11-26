<?php
// File để xóa loại hoa
$id = $_GET['id'];
$conn = new mysqli("localhost", "root", "", "flowers_db");
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

$sql = "DELETE FROM flowers WHERE id=$id";
if ($conn->query($sql) === TRUE) {
    header("Location: admin.php");
} else {
    echo "Lỗi: " . $conn->error;
}
$conn->close();
?>
