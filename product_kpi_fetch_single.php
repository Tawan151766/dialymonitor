<?php

include 'db_io.php';

if (isset($_POST["product_id"])) {

  $output    = array();
  $statement = $connection->prepare("SELECT * FROM product_kpi WHERE product_id = '" . $_POST["product_id"] . "' LIMIT 1 ");
  $statement->execute();
  $result = $statement->fetchAll();

  foreach ($result as $row) {

    if ($row["update_date"] == "0000-00-00 00:00:00") {

      $update_date = "";

    } else {

      $update_date = date("d/m/Y H:i:s", strtotime($row["update_date"]));

    }

    $output["update_date"]         = $update_date;
    $output["update_by"]           = $row["update_by"];
    $output["product_code"]        = $row["product_code"];
    $output["product_name"]        = $row["product_group"];
    $output["product_develop"]     = $row["develop"];
    $output["product_detail_code"] = $row["product_detail_code"];
    $output["product_detail"]      = $row["product_detail"];
    $output["product_model"]       = $row["product_model"];
    $output["leader"]              = $row["leader"];
    $output["staff"]               = $row["staff"];
    $output["app"]                 = $row["app"];
    $output["sales_target"]        = number_format($row["sales_target"]);
    $output["customer"]            = $row["customer"];
    $output["po"]                  = $row["po"];
    $output["tools"]               = $row["tools"];
    $output["visit"]               = $row["visit"];
    $output["quote"]               = $row["quote"];

  }

  echo json_encode($output);

}
?>