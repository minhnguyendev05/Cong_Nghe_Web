<?php
$pdo = new PDO("mysql:host=localhost;dbname=thuchanh1;charset=utf8", "root", "");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!isset($_FILES["quizfile"])) {
        die("Không có file.");
    }

    $content = file_get_contents($_FILES["quizfile"]["tmp_name"]);
    $blocks = preg_split('/\n\s*\n/', trim($content));

    // 1. Tạo quiz mới
    $stmt = $pdo->prepare("INSERT INTO quizzes (title) VALUES ('Quiz từ file upload')");
    $stmt->execute();
    $quizId = $pdo->lastInsertId();

    foreach ($blocks as $block) {
        $lines = explode("\n", trim($block));

        $questionText = $lines[0];
        $answers = [];
        $correct = [];

        foreach ($lines as $line) {
            if (preg_match('/^[A-D]\./', $line)) {
                $answers[] = trim($line);
            }
            if (strpos($line, "ANSWER:") !== false) {
                $raw = trim(str_replace("ANSWER:", "", $line));
                $correct = array_map("trim", explode(",", $raw));
            }
        }

        // 2. Insert câu hỏi
        $stmt = $pdo->prepare("INSERT INTO questions (quiz_id, content, multi_answer) VALUES (?, ?, ?)");
        $stmt->execute([$quizId, $questionText, count($correct) > 1 ? 1 : 0]);
        $questionId = $pdo->lastInsertId();

        // 3. Insert các phương án
        foreach ($answers as $ans) {
            $opt = substr($ans, 0, 1);
            $stmt = $pdo->prepare("INSERT INTO question_options (question_id, opt, content) VALUES (?, ?, ?)");
            $stmt->execute([$questionId, $opt, $ans]);
        }

        // 4. Insert đáp án đúng
        foreach ($correct as $c) {
            $stmt = $pdo->prepare("INSERT INTO question_correct_answers (question_id, correct_opt) VALUES (?, ?)");
            $stmt->execute([$questionId, $c]);
        }
    }

    echo "<h3>Import thành công! Quiz ID = $quizId</h3>";
    echo '<a href="index.php">Làm bài ngay</a>';
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload Quiz</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="upload-box">
    <h2>Upload Quiz File</h2>
    <form method="POST" enctype="multipart/form-data">
        <input type="file" name="quizfile" required>
        <button type="submit">Upload & Import</button>
    </form>
</div>


</body>
</html>
