<?php

include 'db_io.php';

if (isset($_POST["product_code"])) {

  $output    = array();
  $statement = $connection->prepare("SELECT * FROM product WHERE product_code = '" . $_POST["product_code"] . "' LIMIT 1 ");
  $statement->execute();
  $result = $statement->fetchAll();

  foreach ($result as $row) {

    $output["product_name"] = $row["product_name"];

  }

  echo json_encode($output);

}

?>