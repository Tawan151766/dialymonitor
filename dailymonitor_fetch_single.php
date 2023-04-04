<?php

include 'db_io.php';

if (isset($_POST["subject_id"])) {

  $output    = array();
  $statement = $connection->prepare("SELECT * FROM dailymonitor WHERE subject_id = '" . $_POST["subject_id"] . "' LIMIT 1 ");
  $statement->execute();
  $result = $statement->fetchAll();

  foreach ($result as $row) {

    if ($row["subject_date"] == "0000-00-00 00:00:00") {

      $subject_date = "";

    } else {

      $subject_date = date("d/m/Y H:i:s", strtotime($row["subject_date"]));

    }

    $output["subject_date"]        = $subject_date;
    $output["subject_name"]        = $row["subject_name"];
    $output["subject_by"]          = $row["subject_by"];
    $output["subject_department"]  = $row["subject_department"];
    $output["category1"]           = $row["category1"];
    $output["category2"]           = $row["category2"];
    $output["action_person"]       = $row["action_person"];
    $output["response_person"]     = $row["response_person"];
    $output["response_department"] = $row["response_department"];
    $output["subject_status"]      = $row["subject_status"];
    $output["io_number"]           = $row["io_number"];
    $output["po_number"]           = $row["po_number"];
    $output["company_code"]        = $row["company_code"];
    $output["company_name"]        = $row["company_name"];
    $output["company_address"]     = $row["company_address"];
    $output["des_cription"]        = htmlspecialchars_decode($row["des_cription"]);
    $output["remarks"]             = htmlspecialchars_decode($row["remarks"]);
    $output["solutions"]           = htmlspecialchars_decode($row["solutions"]);
    $output["pdf_attached"]        = $row["pdf_attached"];
  }

  echo json_encode($output);

}
?>