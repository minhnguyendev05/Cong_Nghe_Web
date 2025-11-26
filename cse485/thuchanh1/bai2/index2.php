<?php
$pdo = new PDO("mysql:host=localhost;dbname=thuchanh1;charset=utf8", "root", "");

// Lấy quiz mới nhất
$quiz = $pdo->query("SELECT * FROM quizzes ORDER BY id DESC ORDER BY RAND() LIMIT 1")->fetch();

$questions = $pdo->prepare("
    SELECT * FROM questions WHERE quiz_id = ?
");
if($questions->rowCount() === 0){
    echo "Chưa có bộ câu hỏi nào -> ".'<a href="upload.php">Upload ngay</a>' ;
    exit;
}
$questions->execute([$quiz["id"]]);
$questions = $questions->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?= $quiz["title"] ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h2><?= $quiz["title"] ?></h2>

<form method="POST" action="result.php">
<?php foreach ($questions as $index => $q): ?>

<?php
$options = $pdo->prepare("SELECT * FROM question_options WHERE question_id = ?");
$options->execute([$q["id"]]);
$options = $options->fetchAll();

$correct = $pdo->prepare("SELECT correct_opt FROM question_correct_answers WHERE question_id = ?");
$correct->execute([$q["id"]]);
$correct = $correct->fetchAll(PDO::FETCH_COLUMN);
?>

<div class="question-block">
    <div class="question"><?= ($index+1).". ".$q["content"] ?></div>

    <?php foreach ($options as $opt): ?>
        <label>
            <input
                type="<?= count($correct) > 1 ? "checkbox" : "radio" ?>"
                name="q<?= $q["id"] ?><?= count($correct) > 1 ? "[]" : "" ?>"
                value="<?= $opt["opt"] ?>">
            <?= $opt["content"] ?>
        </label><br>
    <?php endforeach; ?>

    <input type="hidden" name="correct<?= $q["id"] ?>" value="<?= implode(",", $correct) ?>">
</div>
<?php endforeach; ?>

<button type="submit">Nộp bài</button>
</form>

</body>
</html>
