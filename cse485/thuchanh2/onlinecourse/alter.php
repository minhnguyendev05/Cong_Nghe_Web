<?php
$config = require 'config/config.php';
try {
    $pdo = new PDO("mysql:host={$config['host']};dbname={$config['dbname']};charset=utf8mb4", $config['username'], $config['password']);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec("ALTER TABLE courses ADD COLUMN status ENUM('pending', 'approved', 'rejected') DEFAULT 'pending' AFTER image");
    echo 'Column added successfully';
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
