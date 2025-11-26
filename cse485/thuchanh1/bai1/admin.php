<?php
session_start();
if (!isset($_SESSION['user'])) {
    header("Location: login.php");
    exit();
}
require("data_flowers.php");

// Kết nối cơ sở dữ liệu
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "flowers_db";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

$sql = "SELECT * FROM flowers";
$result = $conn->query($sql);

$data = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $row['images'] = json_decode($row['images'], true);
        $data[] = $row;
    }
}
$conn->close();

?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" 
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f5f6fa;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background: #343a40;
            color: #fff;
            position: fixed;
        }
        .sidebar a {
            color: #ddd;
            padding: 12px;
            display: block;
            text-decoration: none;
        }
        .sidebar a:hover {
            background: #495057;
        }
        .content {
            margin-left: 260px;
            padding: 20px;
        }
        /* Hình ảnh responsive trong bảng */
        .image-group img {
            width: 70px;
            height: auto;
            border-radius: 5px;
            object-fit: cover;
        }

        /* Khi màn hình nhỏ, hình thu nhỏ lại */
        @media (max-width: 768px) {
            .image-group img {
                width: 50px;
            }
        }

        @media (max-width: 576px) {
            .image-group img {
                width: 40px;
            }
        }

        /* Action: xuống dòng gọn */
        .action-buttons {
            display: flex;
            gap: 5px;
            flex-wrap: wrap; /* tự xuống dòng khi hẹp */
        }

        @media (max-width: 576px) {
            .action-buttons a {
                width: 100%; /* mỗi nút 1 dòng */
            }
        }
        /* table th,td {
            text-align: center;
        } */
    </style>

</head>

<body>

    <!-- SIDEBAR -->
    <div class="sidebar">
        <h3 class="text-center py-3">Admin Panel</h3>
        <a href="#">Dashboard</a>
        <a href="#">Products</a>
        <a href="#">Users</a>
        <a href="#">Settings</a>
        <a href="logout.php" class="text-danger">Logout</a>
    </div>

    <!-- CONTENT -->
    <div class="content">
        <div class="d-flex justify-content-between mb-3">
            <h2>Quản lý loại hoa</h2>
            <a href="create.php" class="btn btn-primary">+ Thêm mới</a>
        </div>

        <!-- TABLE CRUD -->
        <div class="card shadow">
            <div class="card-body">

                <table class="table table-striped table-hover align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th width="10%">ID</th>
                            <th width="20%">Name</th>
                            <th width="40%">Description</th>
                            <th width="10%">Image</th>
                            <th width="20%">Action</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php 
                        $start = 1;
                        foreach ($data as $flower) {
                            $flower['id'] = $start;
                            echo "<tr>";

                            echo "<td>".$flower['id']."</td>";
                            echo "<td>".$flower['name']."</td>";
                            echo "<td>".$flower['description']."</td>";

                            // Images
                            echo "<td>";
                                echo '<div class="image-group d-flex gap-2 flex-wrap">';
                                foreach ($flower['images'] as $image) {
                                    echo '<img src="images/'.$image.'" 
                                            alt="'.$flower['name'].'" 
                                            class="img-thumbnail">';
                                }
                                echo "</div>";
                            echo "</td>";

                            // Action buttons
                            echo "<td>";
                                echo "<div class='action-buttons'>";
                                    echo "<a href='view.php?id=".$flower['id']."' class='btn btn-sm btn-info'>Xem</a>";
                                    echo "<a href='edit.php?id=".$flower['id']."' class='btn btn-sm btn-warning'>Sửa</a>";
                                    echo "<a href='delete.php?id=".$flower['id']."' class='btn btn-sm btn-danger'
                                        onclick=\"return confirm('Bạn chắc chắn muốn xóa?')\">Xóa</a>";
                                echo "</div>";
                            echo "</td>";

                            echo "</tr>";
                            $start++;
                        }
                        ?>
                    </tbody>
                </table>

            </div>
        </div>

    </div>

</body>
</html>

