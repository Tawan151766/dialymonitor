<?php 
session_start();
include "connectdb.php";
date_default_timezone_set("Asia/Bangkok");
$t = date("Y/m/d H:i:s ");

$sql = "update login_history set logout_time = '" .$t. "' where login_time='$_SESSION[login_time]'";
$dbquery = mysqli_query($connection, $sql);

session_destroy();
echo "<meta http-equiv='refresh' content='2;url=login.php'>";
?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- <div align="center">
  <p><br>
    <br>
    <font size="3" face="MS Sans Serif, Tahoma, sans-serif"><b>Log out</b></font></p><br>
  <p><font size="3" face="MS Sans Serif, Tahoma, sans-serif">Waiting... Return to Log in</font><br>
    <br>
  </p>
</div> -->
<?php
echo "<br><br><center><font size='5' color='blue' face='MS Sans Serif'><b>Logout Please Wait</b></font></center>";
?>