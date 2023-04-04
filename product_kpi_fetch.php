<?php
session_start();
include 'db_io.php';

function get_total_all_records() {

  include 'db_io.php';
  $statement = $connection->prepare("SELECT * FROM product_kpi ");
  $statement->execute();

  return $statement->rowCount();
}

$query   = '';
$output  = array();
$columns = array('product_id', 'null', 'null', 'product_year', 'develop', 'product_group', 'product_code',
  'team', 'leader', 'app', 'staff', 'product_detail_code', 'product_detail', 'product_model',
  'sales_target', 'customer', 'po', 'tools', 'visit', 'quote', 'null', 'update_by', 'update_date');

$query .= "SELECT * FROM product_kpi WHERE 1 ";

if (isset($_POST["search"]["value"])) {

  $query .= 'AND ( product_group LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR product_code = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR product_detail = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR product_detail_code = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR product_model = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR team = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR app = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR staff = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR leader = "' . $_POST["search"]["value"] . '" ) ';

}

// ## Custom Field value
$searchByName    = $_POST["searchByName"];
$searchByDevelop = $_POST["searchByDevelop"];
$searchByCode    = $_POST["searchByCode"];
$searchByStaff   = $_POST['searchByStaff'];
$searchByLeader  = $_POST["searchByLeader"];
$searchByApp     = $_POST["searchByApp"];
$product_filter  = $_POST["product_filter"];

if ($product_filter != '') {
  $query .= ' AND (product_code = "' . $product_filter . '" ) ';
}

if ($searchByDevelop != '') {
  $query .= ' AND (develop = "' . $searchByDevelop . '" ) ';
}

if ($searchByCode != '') {
  $query .= ' AND (product_code LIKE "%' . $searchByCode . '%" OR product_detail_code LIKE "%' . $searchByCode . '%") ';
}

if ($searchByName != '') {
  $query .= ' AND (product_group LIKE "%' . $searchByName . '%") ';
}

if ($searchByStaff != '') {
  $query .= ' AND (staff LIKE "%' . $searchByStaff . '%" ) ';
}

if ($searchByLeader != '') {
  $query .= ' AND (leader LIKE "%' . $searchByLeader . '%" ) ';
}

if ($searchByApp != '') {
  $query .= ' AND (app LIKE "%' . $searchByApp . '%" ) ';
}

if (isset($_POST["order"])) {

  $query .= ' ORDER BY ' . $columns[$_POST['order']['0']['column']] . ' ' . $_POST['order']['0']['dir'] . ' ';

} else {

  $query .= " ORDER BY develop DESC, product_code ASC, leader ASC, app ASC, staff ASC ";

}

if ($_POST["length"] != -1) {

  $query .= ' LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];

}

$statement = $connection->prepare($query);
$statement->execute();
$result        = $statement->fetchAll();
$data          = array();
$filtered_rows = $statement->rowCount();

$n = 0;

foreach ($result as $row) {

  $n++;

  if ($row["update_date"] != "0000-00-00 00:00:00") {
    $update_date = date("d/m/Y", strtotime($row['update_date']));
  } else {
    $update_date = "";
  }

  $sales_target = number_format($row["sales_target"]);

  $sub_array = array();

  $sub_array[] = $row["product_id"];

  if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "BDM" || $_SESSION['auth'] == "APP") {

    $sub_array[] = '<button type="button" name="update" id="' . $row["product_id"] . '" class="btn btn-success btn-sm update">Edit</button>';

  } else {

    $sub_array[] = '<button type="button" name="noupdate" id="' . $row["product_id"] . '" class="btn btn-secondary btn-sm noupdate">Edit</button>';

  }

  $sub_array[] = $n;
  $sub_array[] = $row["product_year"];
  $sub_array[] = $row["develop"];
  $sub_array[] = $row["product_group"];
  $sub_array[] = $row["product_code"];
  $sub_array[] = $row["team"];
  $sub_array[] = $row["leader"];
  $sub_array[] = $row["app"];
  $sub_array[] = $row["staff"];
  $sub_array[] = $row["product_detail_code"];
  $sub_array[] = $row["product_detail"];
  $sub_array[] = $row["product_model"];
  $sub_array[] = $sales_target;
  $sub_array[] = $row["customer"];
  $sub_array[] = $row["po"];
  $sub_array[] = $row["tools"];
  $sub_array[] = $row["visit"];
  $sub_array[] = $row['quote'];

  if ($_SESSION['auth'] == "MASTER") {

    // $sub_array[] = '<button type="button" name="delete" id="' . $row["product_id"] . '" class="btn btn-danger btn-sm delete">Delete</button>';
    $sub_array[] = '<button type="button" name="nodelete" id="' . $row["product_id"] . '" class="btn btn-secondary btn-sm nodelete">Delete</button>';

  } else {

    $sub_array[] = '<button type="button" name="nodelete" id="' . $row["product_id"] . '" class="btn btn-secondary btn-sm nodelete">Delete</button>';
  }

  $sub_array[] = $row['update_by'];
  $sub_array[] = $update_date;

  $data[] = $sub_array;

}

$output = array(
  "draw"            => intval($_POST["draw"]),
  "recordsTotal"    => get_total_all_records(),
  "recordsFiltered" => $filtered_rows,
  "data"            => $data,
);

echo json_encode($output);
?>