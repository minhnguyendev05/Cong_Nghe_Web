<?php
// File để xem chi tiết loại hoa
$id = $_GET['id'];
$conn = new mysqli("localhost", "root", "", "flowers_db");
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

$sql = "SELECT * FROM flowers WHERE id=$id";
$result = $conn->query($sql);
$flower = $result->fetch_assoc();
$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Chi Tiết Loại Hoa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1><?php echo $flower['name']; ?></h1>
    <p><?php echo $flower['description']; ?></p>
    <div>
        <?php foreach (json_decode($flower['images']) as $image) {
            echo "<img src='images/$image' alt='{$flower['name']}' style='width:200px;'>";
        } ?>
    </div>
    <a href="admin.php">Quay lại</a>
</body>
</html>
