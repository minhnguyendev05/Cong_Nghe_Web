<?php
// File để sửa loại hoa
$id = $_GET['id'];
$conn = new mysqli("localhost", "root", "", "flowers_db");
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $images = json_encode(explode(',', $_POST['images']));

    $sql = "UPDATE flowers SET name='$name', description='$description', images='$images' WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        header("Location: admin.php");
    } else {
        echo "Lỗi: " . $conn->error;
    }
}

$sql = "SELECT * FROM flowers WHERE id=$id";
$result = $conn->query($sql);
$flower = $result->fetch_assoc();
$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Sửa Loại Hoa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form method="POST">
        <label>Tên Hoa:</label>
        <input type="text" name="name" value="<?php echo $flower['name']; ?>" required>
        <label>Mô Tả:</label>
        <textarea name="description" required><?php echo $flower['description']; ?></textarea>
        <label>Hình Ảnh (phân cách bởi dấu phẩy):</label>
        <input type="text" name="images" value="<?php echo implode(',', json_decode($flower['images'])); ?>" required>
        <button type="submit">Cập Nhật</button>
    </form>
</body>
</html>
