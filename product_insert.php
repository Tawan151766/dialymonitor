<?php

session_start();
include 'db_io.php';
include 'database.class.php';

$pecperson = $_SESSION['pec_code'];
$today     = date("Y-m-d H:i:s", strtotime('now'));
$year      = date("Y", strtotime('now'));

if (isset($_POST["operation"])) {

  if ($_POST["operation"] == "Add") {

    $buy_usd   = str_replace(",", "", $_POST["buy_usd"]);
    $sell_baht = str_replace(",", "", $_POST["sell_baht"]);

    $sell_PW = str_replace(",", "", $_POST["sell_PW"]);
    $sell_ES = str_replace(",", "", $_POST["sell_ES"]);
    $sell_CG = str_replace(",", "", $_POST["sell_CG"]);
    $sell_FI = str_replace(",", "", $_POST["sell_FI"]);
    $sell_MS = str_replace(",", "", $_POST["sell_MS"]);
    $sell_AP = str_replace(",", "", $_POST["sell_AP"]);
    $sell_SR = str_replace(",", "", $_POST["sell_SR"]);
    $sell_TS = str_replace(",", "", $_POST["sell_TS"]);
    $sell_VP = str_replace(",", "", $_POST["sell_VP"]);

    $query     = "SELECT max(item) AS max_item FROM product";
    $statement = $connection->prepare($query);
    $statement->execute();
    $result   = $statement->fetch(PDO::FETCH_ASSOC);
    $max_item = intval($result['max_item']);

    $next_item = $max_item + 1;

    // ****************************************************************************

    $dbconnect = new Database();

    $table = "product";

    $insert_data = array();

    $insert_data["item"]         = $next_item;
    $insert_data["product_year"] = $_POST["product_year"];
    $insert_data["product_name"] = $_POST["product_name"];
    $insert_data["product_type"] = $_POST["product_type"];
    $insert_data["product_code"] = $_POST["product_code"];
    $insert_data["team"]         = $_POST["team"];
    $insert_data["leader"]       = $_POST["leader"];
    $insert_data["app"]          = $_POST["app"];
    $insert_data["buy_usd"]      = $buy_usd;
    $insert_data["sell_baht"]    = $sell_baht;
    $insert_data["sell_PW"]      = $sell_PW;
    $insert_data["sell_ES"]      = $sell_ES;
    $insert_data["sell_CG"]      = $sell_CG;
    $insert_data["sell_FI"]      = $sell_FI;
    $insert_data["sell_MS"]      = $sell_MS;
    $insert_data["sell_AP"]      = $sell_AP;
    $insert_data["sell_SR"]      = $sell_SR;
    $insert_data["sell_TS"]      = $sell_TS;
    $insert_data["sell_VP"]      = $sell_VP;
    $insert_data["update_by"]    = $pecperson;
    $insert_data["update_date"]  = $today;

    $dbconnect->insert($table, $insert_data);

    // ****************************************************************************

    // $statement = $connection->prepare("INSERT INTO product
    // (product_year, product_code, product_name, product_grade, product_polar, team, leader, buy_usd, sell_baht, update_by, update_date)
    // VALUES (:product_year, :product_code, :product_name, :product_grade, :product_polar, :team, :leader, :buy_usd, :sell_baht, :update_by, :update_date) ");

    // $result = $statement->execute(
    //   array(

    //     ':product_year'  => $year,
    //     ':source_name'   => $_POST["product_name"],
    //     ':source_code'   => $_POST["source_code"],
    //     ':product_code'  => $_POST["product_code"],
    //     ':product_name'  => $_POST["product_name"],
    //     ':product_grade' => $_POST["product_grade"],
    //     ':product_polar' => $_POST["product_polar"],
    //     ':pec_group'     => $_POST["pec_group"],
    //     ':sales'         => $_POST["sales"],
    //     ':buy_usd'       => $buy_usd,
    //     ':sell_baht'     => $sell_baht,
    //     ':update_by'     => $pecperson,
    //     ':update_date'   => $today,

    //   )

    // );

    // $errorG = $statement->errorInfo();

    // if (!empty($result)) {

    //   echo 'Data Updated';

    // } else {

    //   echo 'Data NOT Updated' . " " . $errorG[2];

    // }

  }

}

if (isset($_POST["operation"])) {

  if ($_POST["operation"] == "Edit") {

    $product_id = $_POST["product_id"];

    $buy_usd   = str_replace(",", "", $_POST["buy_usd"]);
    $sell_baht = str_replace(",", "", $_POST["sell_baht"]);

    $sell_PW = str_replace(",", "", $_POST["sell_PW"]);
    $sell_ES = str_replace(",", "", $_POST["sell_ES"]);
    $sell_CG = str_replace(",", "", $_POST["sell_CG"]);
    $sell_FI = str_replace(",", "", $_POST["sell_FI"]);
    $sell_MS = str_replace(",", "", $_POST["sell_MS"]);
    $sell_AP = str_replace(",", "", $_POST["sell_AP"]);
    $sell_SR = str_replace(",", "", $_POST["sell_SR"]);
    $sell_TS = str_replace(",", "", $_POST["sell_TS"]);
    $sell_VP = str_replace(",", "", $_POST["sell_VP"]);

    // $sell_baht = intval($sell_PW) + intval($sell_ES) + intval($sell_CG) + intval($sell_FI)
    //  + intval($sell_MS) + intval($sell_AP) + intval($sell_SR) + intval($sell_TS) + intval($sell_VP);

    //  *******************************************************************************

    $table = "product";

    $update_data = array();

    $dbconnect = new Database();

    $update_data["product_id"]   = $product_id;
    $update_data["product_year"] = $_POST["product_year"];
    $update_data["product_name"] = $_POST["product_name"];
    $update_data["product_type"] = $_POST["product_type"];
    $update_data["product_code"] = $_POST["product_code"];
    $update_data["team"]         = $_POST["team"];
    $update_data["leader"]       = $_POST["leader"];
    $update_data["app"]          = $_POST["app"];
    $update_data["buy_usd"]      = $buy_usd;
    $update_data["sell_baht"]    = $sell_baht;
    $update_data["sell_PW"]      = $sell_PW;
    $update_data["sell_ES"]      = $sell_ES;
    $update_data["sell_CG"]      = $sell_CG;
    $update_data["sell_FI"]      = $sell_FI;
    $update_data["sell_MS"]      = $sell_MS;
    $update_data["sell_AP"]      = $sell_AP;
    $update_data["sell_SR"]      = $sell_SR;
    $update_data["sell_TS"]      = $sell_TS;
    $update_data["sell_VP"]      = $sell_VP;
    $update_data["update_by"]    = $pecperson;
    $update_data["update_date"]  = $today;

    $dbconnect->update($table, $update_data);

    // ********************************************************************************

    // $statement = $connection->prepare("UPDATE product SET

    //     product_year    = :product_year,
    //     update_date     = :update_date,
    //     update_by       = :update_by,
    //     sales           = :sales,
    //     pec_group       = :pec_group,
    //     product_grade   = :product_grade,
    //     product_polar   = :product_polar,
    //     product_code    = :product_code,
    //     product_name    = :product_name,
    //     source_code     = :source_code,
    //     source_name     = :source_name,
    //     buy_usd         = :buy_usd,
    //     sell_baht       = :sell_baht,
    //     sell_TS         = :sell_TS,
    //     sell_AP         = :sell_AP,
    //     sell_CG         = :sell_CG,
    //     sell_ES         = :sell_ES,
    //     sell_FI         = :sell_FI,
    //     sell_PW         = :sell_PW,
    //     sell_VP         = :sell_VP

    //   WHERE product_id = :product_id "
    // );

    // $result = $statement->execute(
    //   array(

    //     ':product_year'  => $_POST["product_year1"],
    //     ':update_date'   => $today,
    //     ':update_by'     => $pecperson,
    //     ':sales'         => $_POST["sales1"],
    //     ':pec_group'     => $_POST["pec_group1"],
    //     ':product_grade' => $_POST["product_grade1"],
    //     ':product_polar' => $_POST["product_polar1"],
    //     ':product_code'  => $_POST["product_code1"],
    //     ':product_name'  => $_POST["product_name1"],
    //     ':source_code'   => $_POST["source_code1"],
    //     ':source_name'   => $_POST["source_name1"],
    //     ':buy_usd'       => $buy_usd,
    //     ':sell_baht'     => $sell_BAHT,
    //     ':sell_TS'       => $sell_TS,
    //     ':sell_AP'       => $sell_AP,
    //     ':sell_CG'       => $sell_CG,
    //     ':sell_ES'       => $sell_ES,
    //     ':sell_FI'       => $sell_FI,
    //     ':sell_PW'       => $sell_PW,
    //     ':sell_VP'       => $sell_VP,
    //     ':product_id'    => $product_id,

    //   )

    // );

    // $errorG = $statement->errorInfo();

    // if (!empty($result)) {

    //   echo 'Data Updated';

    // } else {

    //   echo 'Data NOT Updated' . " " . $errorG[2];

    // }
  }
}

?>