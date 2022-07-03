<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>留言板</title>
  <link rel="stylesheet" href="mycss.css" />
  <script type="text/javascript">
    function check_data() {
      if (document.myForm.author.value.length == 0)
        alert("作者欄位不可以空白");
      else if (document.myForm.subject.value.length == 0)
        alert("主題欄位不可以空白");
      else if (document.myForm.content.value.length == 0)
        alert("內容欄位不可以空白");
      else
        myForm.submit();
    }
  </script>
</head>

<body>
  <h1>公布欄</h1>
  <?php
  require_once("dbtools.inc.php");
  //指定每頁顯示幾筆記錄
  $records_per_page = 5;
  //取得要顯示第幾頁的記錄
  if (isset($_GET["page"]))
    $page = $_GET["page"];
  else
    $page = 1;

  //建立資料連接
  $link = create_connection();

  //執行 SQL 命令
  $sql = "SELECT * FROM message ORDER BY date DESC";
  $result = execute_sql($link, "guestbook", $sql);

  //取得記錄數
  $total_records = mysqli_num_rows($result);

  //計算總頁數
  $total_pages = ceil($total_records / $records_per_page);

  //計算本頁第一筆記錄的序號
  $started_record = $records_per_page * ($page - 1);

  //將記錄指標移至本頁第一筆記錄的序號
  mysqli_data_seek($result, $started_record);
  ?>

  <table class='home' align='center'>
    <?php
    //顯示記錄
    $j = 1;
    while ($row = mysqli_fetch_assoc($result) and $j <= $records_per_page) {
      echo "<tr >";
      echo "<td>作者：" . $row["author"] . "<br>";
      echo "主題：" . $row["subject"] . "<br>";
      echo "時間：" . $row["date"] . "<hr>";
      echo $row["content"] . "</td></tr>";
      $j++;
    }
    echo "</table>";

    //產生導覽列
    echo "<p align='center'>";

    if ($page > 1)
      echo "<a href='index.php?page=" . ($page - 1) . "'>上一頁</a> ";

    for ($i = 1; $i <= $total_pages; $i++) {
      if ($i == $page)
        echo "$i ";
      else
        echo "<a href='index.php?page=$i'>$i</a> ";
    }

    if ($page < $total_pages)
      echo "<a href='index.php?page=" . ($page + 1) . "'>下一頁</a> ";
    echo "</p>";

    //釋放記憶體空間
    mysqli_free_result($result);
    mysqli_close($link);
    ?>
    <form name="myForm" method="post" action="post.php">
      <table class="userpost" align="center">
        <tr>
          <td colspan="2">
            <div>請在此輸入新的內容</div>
          </td>
        </tr>
        <tr>
          <td width="15%">ID</td>
          <td width="85%"><input  name="rescueID" type="number" ></input></td>
        </tr>
        <tr>
          <td width="15%">作者</td>
          <td width="85%"><input name="author" type="text" size="50"></td>
        </tr>
        <tr>
          <td width="15%">主題</td>
          <td width="85%"><input name="subject" type="text" size="50"></td>
        </tr>
        <tr>
          <td width="15%">內容</td>
          <td width="85%"><textarea name="content" cols="50" rows="5"></textarea></td>
        </tr>

        <tr>
          <td colspan="2">
            <input type="button" value="新增資料" onClick="check_data()">　                   
          </td>
        </tr>
      </table>
    </form>
</body>

</html>