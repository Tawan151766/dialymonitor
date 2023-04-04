<?php

session_start();
include 'db_io.php';
include 'database.class.php';

$pecperson = $_SESSION['pec_code'];
$today     = date("Y-m-d H:i:s", strtotime('now'));
$year      = date("Y", strtotime('now'));

if (isset($_POST["operation"])) {

  if ($_POST["operation"] == "Add") {

    $sales_target = str_replace(",", "", $_POST["sales_target"]);

    // $query     = "SELECT max(item) AS max_item FROM product";
    // $statement = $connection->prepare($query);
    // $statement->execute();
    // $result   = $statement->fetch(PDO::FETCH_ASSOC);
    // $max_item = intval($result['max_item']);

    // $next_item = $max_item + 1;

    // ****************************************************************************

    $dbconnect = new Database();

    $table = "product_kpi";

    $insert_data = array();

    $insert_data["product_code"]        = $_POST["product_code"];
    $insert_data["product_group"]       = $_POST["product_name"];
    $insert_data["develop"]             = $_POST["product_develop"];
    $insert_data["product_detail_code"] = $_POST["product_detail_code"];
    $insert_data["product_detail"]      = $_POST["product_detail"];
    $insert_data["product_model"]       = $_POST["product_model"];
    $insert_data["sales_target"]        = $sales_target;
    $insert_data["leader"]              = $_POST["leader"];
    $insert_data["app"]                 = $_POST["app"];
    $insert_data["staff"]               = $_POST["staff"];
    $insert_data["customer"]            = $_POST["customer"];
    $insert_data["po"]                  = $_POST["po"];
    $insert_data["tools"]               = $_POST["tools"];
    $insert_data["visit"]               = $_POST["visit"];
    $insert_data["quote"]               = $_POST["quote"];
    $insert_data["update_by"]           = $pecperson;
    $insert_data["update_date"]         = $today;

    $dbconnect->insert($table, $insert_data);

  }

}

if (isset($_POST["operation"])) {

  if ($_POST["operation"] == "Edit") {

    $product_id = $_POST["product_id"];

    $sales_target = str_replace(",", "", $_POST["sales_target"]);

    //  *******************************************************************************

    $table = "product_kpi";

    $update_data = array();

    $dbconnect = new Database();

    $update_data["product_id"]          = $product_id;
    $update_data["product_code"]        = $_POST["product_code"];
    $update_data["product_group"]       = $_POST["product_name"];
    $update_data["develop"]             = $_POST["product_develop"];
    $update_data["product_detail_code"] = $_POST["product_detail_code"];
    $update_data["product_detail"]      = $_POST["product_detail"];
    $update_data["product_model"]       = $_POST["product_model"];
    $update_data["sales_target"]        = $sales_target;
    $update_data["leader"]              = $_POST["leader"];
    $update_data["app"]                 = $_POST["app"];
    $update_data["staff"]               = $_POST["staff"];
    $update_data["customer"]            = $_POST["customer"];
    $update_data["po"]                  = $_POST["po"];
    $update_data["tools"]               = $_POST["tools"];
    $update_data["visit"]               = $_POST["visit"];
    $update_data["quote"]               = $_POST["quote"];
    $update_data["update_by"]           = $pecperson;
    $update_data["update_date"]         = $today;

    $dbconnect->update($table, $update_data);

    // ********************************************************************************

  }
}

?>