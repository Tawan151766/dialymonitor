<?php
session_start();
include 'db_io.php';

function get_total_all_records() {

  include 'db_io.php';
  $statement = $connection->prepare("SELECT * FROM product ");
  $statement->execute();

  return $statement->rowCount();
}

$today_date = date("Y-m-d H:i:s", strtotime("now"));
$time_stamp = date("dmYHis", strtotime("now"));

$query   = '';
$output  = array();
$columns = array('product_id', 'null', 'item', 'product_year', 'product_name', 'product_type',
  'product_code', 'team', 'leader', 'app', 'product_grade', 'product_polar', 'buy_usd',
  'sell_baht', 'sell_PW', 'sell_ES', 'sell_CG', 'sell_FI', 'sell_MS', 'sell_AP', 'sell_SR', 'sell_TS',
  'sell_VP', 'null', 'null', 'update_by', 'update_date', 'product_grade', 'product_polar');

$query .= "SELECT * FROM product WHERE 1 ";

if (isset($_POST["search"]["value"])) {

  $query .= 'AND ( product_name LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR product_code = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR product_type = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR team = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR app = "' . $_POST["search"]["value"] . '" ';
  $query .= 'OR leader = "' . $_POST["search"]["value"] . '" ) ';

}

// ## Custom Field value
$searchByName   = $_POST["searchByName"];
$searchByType   = $_POST["searchByType"];
$searchByCode   = $_POST["searchByCode"];
$searchByTeam   = $_POST['searchByTeam'];
$searchByLeader = $_POST["searchByLeader"];
$searchByApp    = $_POST["searchByApp"];
$selectYear     = $_POST["selectYear"];

if ($searchByType != '') {
  $query .= ' AND (product_type = "' . $searchByType . '" ) ';
}

if ($searchByCode != '') {
  $query .= ' AND (product_code LIKE "%' . $searchByCode . '%") ';
}

if ($searchByName != '') {
  $query .= ' AND (product_name LIKE "%' . $searchByName . '%") ';
}

if ($searchByTeam != '') {
  $query .= ' AND (team LIKE "%' . $searchByTeam . '%" ) ';
}

if ($searchByLeader != '') {
  $query .= ' AND (leader LIKE "%' . $searchByLeader . '%" ) ';
}

if ($searchByApp != '') {
  $query .= ' AND (app LIKE "%' . $searchByApp . '%" ) ';
}

if ($selectYear == '2023') {
  $query .= ' AND product_year = "' . $selectYear . '" ';
}

// ########################################################################################

// $sql_buy    = "SELECT sum(buy_usd) AS buyUSD FROM product WHERE buy_usd <> 0 ";
// $query_buy  = mysqli_query($connection, $sql_buy);
// $result_buy = mysqli_fetch_assoc($query_buy);
// $buyUSD     = $result_buy["buyUSD"];

// $sql_sell    = "SELECT sum(sell_baht) AS sellBAHT FROM product WHERE sell_baht <> 0 ";
// $query_sell  = mysqli_query($connection, $sql_sell);
// $result_sell = mysqli_fetch_assoc($query_sell);
// $sellBAHT    = $result_sell["sellBAHT"];

// ########################################################################################

if (isset($_POST["order"])) {

  $query .= ' ORDER BY ' . $columns[$_POST['order']['0']['column']] . ' ' . $_POST['order']['0']['dir'] . ' ';

} else if ($selectYear == 'ALL') {

  $query .= " ORDER BY product_code ASC ";

} else {

  $query .= " ORDER BY item ASC ";

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

  $buy_usd   = number_format($row["buy_usd"]);
  $sell_baht = number_format($row["sell_baht"]);

  $total_baht = intval($row["sell_PW"]) + intval($row["sell_ES"]) + intval($row["sell_CG"]) +
  intval($row["sell_FI"]) + intval($row["sell_MS"]) + intval($row["sell_AP"]) + intval($row["sell_SR"]) +
  intval($row["sell_TS"]) + intval($row["sell_VP"]);

  $sub_array = array();

  $sub_array[] = $row["product_id"];

  if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "BDM" || $_SESSION['auth'] == "APP") {

    $sub_array[] = '<button type="button" name="update" id="' . $row["product_id"] . '" class="btn btn-success btn-sm update">Edit</button>';

  } else {

    $sub_array[] = '<button type="button" name="noupdate" id="' . $row["product_id"] . '" class="btn btn-secondary btn-sm noupdate">Edit</button>';

  }

  $sub_array[] = $row["item"];
  $sub_array[] = $row["product_year"];
  // $sub_array[] = $row["product_name"];
  $sub_array[] = '<a href="product_kpi.php?page=new&product=' . $row["product_code"] . '&name=' . $row["product_name"] . '">' . $row["product_name"] . '</a>';
  $sub_array[] = $row["product_type"];
  // $sub_array[] = $row["product_code"];
  $sub_array[] = '<a href="product_kpi.php?page=new&product=' . $row["product_code"] . '&name=' . $row["product_name"] . '">' . $row["product_code"] . '</a>';
  $sub_array[] = $row["team"];
  $sub_array[] = $row["leader"];
  $sub_array[] = $row["app"];
  $sub_array[] = $buy_usd;
  $sub_array[] = $sell_baht;
  $sub_array[] = number_format($row["sell_PW"]);
  $sub_array[] = number_format($row["sell_ES"]);
  $sub_array[] = number_format($row["sell_CG"]);
  $sub_array[] = number_format($row["sell_FI"]);
  $sub_array[] = number_format($row["sell_MS"]);
  $sub_array[] = number_format($row["sell_AP"]);
  $sub_array[] = number_format($row["sell_SR"]);
  $sub_array[] = number_format($row["sell_TS"]);
  $sub_array[] = number_format($row["sell_VP"]);
  $sub_array[] = number_format($total_baht);

  if ($_SESSION['auth'] == "MASTER" && $row["product_year"] != "2023") {

    $sub_array[] = '<button type="button" name="delete" id="' . $row["product_id"] . '" class="btn btn-danger btn-sm delete">Delete</button>';
    // $sub_array[] = '<button type="button" name="nodelete" id="' . $row["product_id"] . '" class="btn btn-secondary btn-sm nodelete">Delete</button>';

  } else {

    $sub_array[] = '<button type="button" name="nodelete" id="' . $row["product_id"] . '" class="btn btn-secondary btn-sm nodelete">Delete</button>';
  }

  $sub_array[] = $row['update_by'];
  $sub_array[] = $update_date;
  $sub_array[] = $row['product_grade'];
  $sub_array[] = $row['product_polar'];

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