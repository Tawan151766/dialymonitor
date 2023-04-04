<?php
session_start();
include 'db_io.php';
include 'wordwrap.php';

$today = date("Y-m-d H:i:s", strtotime("now"));

function get_total_all_records() {

  include 'db_io.php';
  $statement1 = $connection->prepare("SELECT * FROM dailymonitor ");
  $statement1->execute();

  return $statement1->rowCount();
}

$query   = '';
$output  = array();
$columns = array('subject_id', 'null', 'subject_date', 'subject_name', 'pdf_attached', 'subject_by', 'category1', 'category2', 'response_person', 'response_department', 'action_person', 'subject_status', 'remarks', 'solutions', 'io_number', 'q_number', 'po_number', 'company_name', 'des_cription', 'null');

$query .= "SELECT * FROM dailymonitor WHERE 1 ";

if (isset($_POST["search"]["value"])) {

  $query .= 'AND ( subject_name LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR company_name LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR io_number LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR category1 LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR category2 LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR des_cription LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR remarks LIKE "%' . $_POST["search"]["value"] . '%" ';
  $query .= 'OR po_number LIKE "%' . $_POST["search"]["value"] . '%" ) ';

}

## Custom Field value
$searchByIO   = $_POST["searchByIO"];
$searchByName = $_POST['searchByName'];
$searchBySub  = $_POST["searchBySub"];
$searchByPO   = $_POST["searchByPO"];
$searchByType = $_POST['searchByType'];

## Search
if ($searchByIO != '') {
  $query .= ' AND (io_number LIKE "%' . $searchByIO . '%" ) ';
}

if ($searchByName != '') {
  $query .= ' AND (company_name LIKE "%' . $searchByName . '%" ) ';
}

if ($searchBySub != '') {
  $query .= ' AND (subject_name LIKE "%' . $searchBySub . '%" ) ';

}

if ($searchByPO != '') {
  $query .= ' AND (po_number LIKE "%' . $searchByPO . '%" ) ';

}

if ($searchByType != '') {
  $query .= ' AND (category1 LIKE "%' . $searchByType . '%" ) ';

}

if (isset($_POST["order"])) {

  $query .= 'ORDER BY ' . $columns[$_POST['order']['0']['column']] . ' ' . $_POST['order']['0']['dir'] . ' ';

} else {

  $query .= 'ORDER BY subject_date DESC ';

}

if ($_POST["length"] != -1) {

  $query .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];

}

$statement = $connection->prepare($query);
$statement->execute();

$result = $statement->fetchAll();

$filtered_rows = $statement->rowCount();

$data = array();

foreach ($result as $row) {

  $sub_array = array();

  $subject_date       = date("d/m/Y H:i:s", strtotime($row['subject_date']));
  $subject_by         = $row['subject_by'];
  $subject_department = $row['subject_department'];
  $subject_name       = utf8_wordwrap($row['subject_name'], 50, "<br>", true);
  $remarks            = utf8_wordwrap($row['remarks'], 50, "<br>", true);
  $description        = utf8_wordwrap($row['des_cription'], 50, "<br>", true);
  $solutions          = utf8_wordwrap($row['solutions'], 50, "<br>", true);

  $sub_array[] = $row["subject_id"];

  if ($_SESSION['pec_code'] == $subject_by || $_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "BDM") {

    $sub_array[] = '<button type="button" name="update" id="' . $row["subject_id"] . '" class="btn btn-success btn-sm update">Edit</button>';

  } else {

    $sub_array[] = '<button type="button" name="noupdate" id="' . $row["subject_id"] . '" class="btn btn-secondary btn-sm noupdate">Edit</button>';

  }

  $sub_array[] = $subject_date;
  $sub_array[] = $subject_name;

  if ($row['pdf_attached'] != "") {

    $buffer    = explode(".", $row['pdf_attached']);
    $extension = strtolower($buffer[1]);

    if ($extension == "pdf") {

      $sub_array[] = '<a href="./upload/dailymonitor/' . $row['pdf_attached'] . '" target="_blank"><i class="fa fa-file-pdf-o"style="font-size:35px;color:#F32D3E"></i></a>';

    } else if ($extension == "jpg" || $extension == "jpeg") {

      $sub_array[] = '<a href="./upload/dailymonitor/' . $row['pdf_attached'] . '" target="_blank"><img src="./upload/dailymonitor/' . $row['pdf_attached'] . '" height="35px" width="35px"></a>';

    } else {

      $sub_array[] = "";

    }

  } else {

    $sub_array[] = "";

  }

  $sub_array[] = $subject_by;
  $sub_array[] = $row['category1'];
  $sub_array[] = $row['category2'];
  $sub_array[] = $row["response_person"];
  $sub_array[] = $row["response_department"];
  $sub_array[] = $row["action_person"];
  $sub_array[] = $row["subject_status"];

  $sub_array[] = $remarks;
  $sub_array[] = $solutions;
  $sub_array[] = $row['io_number'];
  $sub_array[] = $row['q_number'];
  $sub_array[] = $row['po_number'];
  $sub_array[] = $row['company_name'];
  $sub_array[] = $description;

  if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "BDM") {

    $sub_array[] = '<button type="button" name="delete" id="' . $row["subject_id"] . '" class="btn btn-danger btn-sm delete">Delete</button>';

  } else {

    $sub_array[] = '<button type="button" name="nodelete" id="' . $row["subject_id"] . '" class="btn btn-secondary btn-sm nodelete">Delete</button>';
  }

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