<?php
if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    die("Không có dữ liệu.");
}

$totalQuestions = 0;
$correctCount = 0;
$results = [];

foreach ($_POST as $key => $value) {
    if (preg_match('/^correct(\d+)$/', $key, $match)) {
        $index = $match[1];
        $correctAnswers = array_map('trim', explode(",", $value)); // mảng đáp án đúng

        // Lấy đáp án user chọn
        $userKey = "q" . $index;

        if (isset($_POST[$userKey])) {
            // Convert về mảng => checkbox: array, radio: string
            $userAnswer = is_array($_POST[$userKey]) ? $_POST[$userKey] : [$_POST[$userKey]];
        } else {
            $userAnswer = [];
        }

        // Sắp xếp 2 bên để so sánh đúng thứ tự bất kể user chọn như nào
        sort($userAnswer);
        sort($correctAnswers);

        // Kiểm tra đúng sai
        $isCorrect = ($userAnswer == $correctAnswers);

        if ($isCorrect) {
            $correctCount++;
        }

        $results[] = [
            "questionIndex" => $index + 1,
            "user" => $userAnswer,
            "correct" => $correctAnswers,
            "isCorrect" => $isCorrect
        ];

        $totalQuestions++;
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả bài thi</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h2>Kết quả bài thi</h2>
<p><strong>Điểm:</strong> <?= $correctCount ?>/<?= $totalQuestions ?></p>

<?php foreach ($results as $res): ?>
<div class="block">
    <p><strong>Câu <?= $res["questionIndex"] ?>:</strong></p>

    <p>
        <strong>Đáp án của bạn:</strong> 
        <?= empty($res["user"]) ? "<i>Không chọn</i>" : implode(", ", $res["user"]) ?>
    </p>

    <p>
        <strong>Đáp án đúng:</strong> <?= implode(", ", $res["correct"]) ?>
    </p>

    <?php if ($res["isCorrect"]): ?>
        <p class="correct">✓ Chính xác</p>
    <?php else: ?>
        <p class="wrong">✗ Sai</p>
    <?php endif; ?>
</div>
<?php endforeach; ?>

<a href="index.php">Làm lại bài</a>

</body>
</html>
