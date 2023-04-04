<?php

include 'db_io.php';

if (isset($_POST["product_id"])) {

  $output    = array();
  $statement = $connection->prepare("SELECT * FROM product WHERE product_id = '" . $_POST["product_id"] . "' LIMIT 1 ");
  $statement->execute();
  $result = $statement->fetchAll();

  foreach ($result as $row) {

    if ($row["update_date"] == "0000-00-00 00:00:00") {

      $update_date = "";

    } else {

      $update_date = date("d/m/Y H:i:s", strtotime($row["update_date"]));

    }

    $output["product_type"]  = $row["product_type"];
    $output["product_code"]  = $row["product_code"];
    $output["product_name"]  = $row["product_name"];
    $output["update_date"]   = $update_date;
    $output["update_by"]     = $row["update_by"];
    $output["leader"]        = $row["leader"];
    $output["team"]          = $row["team"];
    $output["app"]           = $row["app"];
    $output["product_grade"] = $row["product_grade"];
    $output["product_polar"] = $row["product_polar"];
    $output["buy_usd"]       = number_format($row["buy_usd"]);
    $output["product_year"]  = $row["product_year"];
    $output["sell_PW"]       = number_format($row["sell_PW"]);
    $output["sell_ES"]       = number_format($row["sell_ES"]);
    $output["sell_CG"]       = number_format($row["sell_CG"]);
    $output["sell_FI"]       = number_format($row["sell_FI"]);
    $output["sell_MS"]       = number_format($row["sell_MS"]);
    $output["sell_AP"]       = number_format($row["sell_AP"]);
    $output["sell_SR"]       = number_format($row["sell_SR"]);
    $output["sell_TS"]       = number_format($row["sell_TS"]);
    $output["sell_VP"]       = number_format($row["sell_VP"]);

    // $sell_baht = intval($row["sell_PW"]) + intval($row["sell_ES"]) + intval($row["sell_CG"])
    //  + intval($row["sell_FI"]) + intval($row["sell_MS"]) + intval($row["sell_AP"])
    //  + intval($row["sell_SR"]) + intval($row["sell_TS"]) + intval($row["sell_VP"]);

    // $output["sell_baht"] = number_format($sell_baht);

    $output["sell_baht"] = number_format($row["sell_baht"]);

  }

  echo json_encode($output);

}
?>