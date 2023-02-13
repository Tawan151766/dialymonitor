<?php
 
 session_start();
 include 'connectdb.php';
 
 
  if (isset($_POST['function']) && $_POST['function'] == 'provinces') {
  	$id = $_POST['id'];
  	$sql = "SELECT * FROM `amphures` WHERE `amphures`.`province_id` ='$id'";
  	$query = mysqli_query($connection, $sql);
  	echo '<option value="">กรุณาเลือกอำเภอ</option>';
  	foreach ($query as $value) {
        echo'<option value="'.$value['amphure_id'].'">'.$value['name_th'].'</option>';
  		
  	}
  }
  if (isset($_POST['function']) && $_POST['function'] == 'amphures') {
    $id = $_POST['id'];
    $sql = "SELECT * FROM `districts` WHERE `districts`.`amphure_id` ='$id'";
    $query = mysqli_query($connection, $sql);
    echo '<option value="">กรุณาเลือกตำบล</option>';
    foreach ($query as $value2) {
      echo '<option value="'.$value2['districts_id'].'">'.$value2['name_th'].'</option>';
      
    }
  }
  if (isset($_POST['function']) && $_POST['function'] == 'amphures') {
    $id = $_POST['id'];
    $sql = "SELECT * FROM `districts` WHERE `districts`.`amphure_id` ='$id'";
    $query = mysqli_query($connection, $sql);
    echo '<option value="">กรุณาเลือกตำบล</option>';
    foreach ($query as $value3) {
      echo '<option value="'.$value3['districts_id'].'">'.$value3['name_th'].'</option>';
      
    }
  }
 ?>