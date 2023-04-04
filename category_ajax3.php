<?php
include "connectdb.php";
  if (isset($_POST['function']) && $_POST['function'] == 'maincategory2') {
    $id = $_POST['id'];
    $sql = "SELECT * FROM category1 INNER JOIN category2 ON category1.category1_id = category2.category1_id WHERE category1_name ='$id'";
    $query = mysqli_query($connection, $sql);
    echo '<option value="" selected>Select</option>';
    foreach ($query as $value) {
        echo '<option value="'.$value['category2_name'].'">'.$value['category2_name'].'</option>';
    }
}
?>