<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP</title>
<?php
require_once("dbtools.inc.php");
?>
   


</head>

<body>
    <h1>測試文字</h1>

    <?php
    // 　$Email = $_GET["Email"];
    $Email = $_GET['Email'];
    echo "{$Email}";
    ?>
</body>

</html>