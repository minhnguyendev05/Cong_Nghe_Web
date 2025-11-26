<?php
require("data_flowers.php");
session_start();

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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Các Loài Hoa</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <?php if(!isset($_SESSION['user'])) { ?>
        <div style="text-align:right; padding: 15px 20px;">
            <a href="login.php" class="login-btn">Login</a>
        </div>
    <?php } else { if($_SESSION['user'] === 'admin') {?> 
        <div style="text-align:right; padding: 15px 20px;">
            <a href="admin.php" class="btn bg-blue">Admin</a>
        </div>
    <?php 
        }
    } ?>

    <div id="container">
        <div>
            Mỗi loại hoa sẽ khoe sắc rực rỡ vào đúng thời điểm thích hợp trong năm,
            khí hậu đáp ứng thuận lợi sẽ giúp hoa phát triển nhanh và đẹp một cách hoàn hảo.
            Nếu đang có kế hoạch trồng hoa trong dịp xuân - hè thì bạn hãy tham khảo bài viết dưới đây nhé!
        </div>

        <div class="image-wrapper">
            <img src="images/tonghophoa.jpg" alt="">
        </div>

        <?php
            foreach ($data as $flower){
                echo '<div class="section-title">'.$flower['id'].'. '.$flower['name'].'</div>';
                echo '<div>
                        '.$flower['description'].'
                    </div>';
                echo '<div class="image-wrapper">';
                foreach ($flower['images'] as $image){
                    echo '<img src="images/'.$image.'" alt="'.$flower['name'].'" />';
                }
                echo '</div>';
            }
        ?>


    </div>

</body>

</html>