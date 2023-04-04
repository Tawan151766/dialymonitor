<?php
include "connectdb.php";
  if (isset($_POST['function']) && $_POST['function'] == 'category1') {
    $id = $_POST['id'];
    $sql = "SELECT * FROM `category2` WHERE category1_id ='$id'";
    $query = mysqli_query($connection, $sql);
    $i = 1;
    foreach ($query as $value) {
        echo '<tr>';
        echo '<td>'.$i++.'</td>';
        echo '<td><a href="" class="" role="button" aria-pressed="true" data-toggle="modal" data-target="#exampleModals'.$value['category2_id'].'">'.$value['category2_name'].'</a></td>';
        echo '<td><a href="delect_category2.php?id='.$value['category2_id'].'" class="btn-sm btn-danger btn-lg active" role="button" aria-pressed="true" >Remove</a>';
        echo '</tr>';
    }
}
?>