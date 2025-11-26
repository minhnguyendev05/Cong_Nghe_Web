<?php
// Đọc toàn bộ file
$raw = file_get_contents("Quiz.txt");

// Tách thành các khối câu hỏi
$blocks = preg_split('/\n\s*\n/', trim($raw));

$questions = [];

foreach ($blocks as $block) {
    $lines = explode("\n", trim($block));
    $q = [
        "question" => $lines[0],
        "answers" => [],
        "correct" => []
    ];

    foreach ($lines as $line) {
        if (preg_match('/^[A-D]\./', $line)) {
            $q["answers"][] = trim($line);
        }
        if (strpos($line, "ANSWER:") !== false) {
            $rawCorrect = trim(str_replace("ANSWER:", "", $line));

            // Tách thành mảng đáp án, loại khoảng trắng
            $correctArray = array_map('trim', explode(",", $rawCorrect));

            $q["correct"] = $correctArray;
        }
    }
    $questions[] = $q;
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài thi trắc nghiệm</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h2>Bài thi trắc nghiệm</h2>
<form method="POST" action="result.php">

<?php foreach ($questions as $index => $q): ?>
<div class="question-block">
    <div class="question">
        <?= ($index+1) . ". " . $q["question"] ?>
    </div>

    <?php
        // Nếu chỉ có 1 đáp án đúng => radio
        // Nếu có >= 2 đáp án đúng => checkbox
        $isMulti = count($q["correct"]) > 1;
    ?>

    <?php foreach ($q["answers"] as $ans):
        $opt = substr($ans, 0, 1); // Lấy A/B/C/D
    ?>
        <label>
            <input 
                type="<?= $isMulti ? "checkbox" : "radio" ?>" 
                name="q<?= $index ?><?= $isMulti ? "[]" : "" ?>" 
                value="<?= $opt ?>"
            >
            <?= $ans ?>
        </label><br>
    <?php endforeach; ?>

    <input type="hidden" name="correct<?= $index ?>" value="<?= implode(",", $q["correct"]) ?>">
</div>
<?php endforeach; ?>

<button type="submit">Nộp bài</button>
</form>

</body>
</html>
