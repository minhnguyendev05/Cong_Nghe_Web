<?php
// File để thêm mới loại hoa
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $images = json_encode(explode(',', $_POST['images']));

    $conn = new mysqli("localhost", "root", "", "flowers_db");
    if ($conn->connect_error) {
        die("Kết nối thất bại: " . $conn->connect_error);
    }

    $sql = "INSERT INTO flowers (name, description, images) VALUES ('$name', '$description', '$images')";
    if ($conn->query($sql) === TRUE) {
        header("Location: admin.php");
    } else {
        echo "Lỗi: " . $conn->error;
    }
    $conn->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Thêm Loại Hoa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form method="POST">
        <label>Tên Hoa:</label>
        <input type="text" name="name" required>
        <label>Mô Tả:</label>
        <textarea name="description" required></textarea>
        <label>Hình Ảnh (phân cách bởi dấu phẩy):</label>
        <input type="text" name="images" required>
        <button type="submit">Thêm</button>
    </form>
</body>
</html>
