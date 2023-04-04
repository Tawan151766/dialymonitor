<?php
session_start();
include 'db_io.php';
$path = "./upload/dailymonitor/";
  $pecperson     = $_SESSION['pec_code'];
  $pecdepartment = $_SESSION['department'];

  $action_person       = "";
  $response_person     = "";
  $response_department = "";

  $subject_date = date("Y-m-d H:i:s");

  if (isset($_POST["response_person"])) {

    $nn = 0;

    foreach ($_POST["response_person"] as $response) {

      $nn++;

      if ($nn == 1) {
        $comma = "";
      } else {
        $comma = ",";
      }

      $response_person .= $comma . $response;
    }

  } else {

    $response_person = "";

  }

  if (isset($_POST["response_department"])) {

    $nn = 0;

    foreach ($_POST["response_department"] as $department) {

      $nn++;

      if ($nn == 1) {
        $comma = "";
      } else {
        $comma = ",";
      }
      $response_department .= $comma . $department;
    }

  } else {

    $response_department = "";

  }

  if (isset($_POST["action_person"])) {

    $nn = 0;

    foreach ($_POST["action_person"] as $action) {

      $nn++;

      if ($nn == 1) {
        $comma = "";
      } else {
        $comma = ",";
      }

      $action_person .= $comma . $action;
    }

  } else {

    $action_person = "";

  }

  if (isset($_POST["po_number"]) && $_POST["po_number"] != "") {

    $po_number = $_POST["po_number"];

    $queryC     = "SELECT * FROM po_report WHERE po_number = '" . $po_number . "' LIMIT 1 ";
    $statementC = $connection->prepare($queryC);
    $statementC->execute();
    $resultC = $statementC->fetch(PDO::FETCH_ASSOC);

    $queryD     = "SELECT * FROM supplier_list WHERE supplier_code = '" . $resultC["supplier_code"] . "' LIMIT 1 ";
    $statementD = $connection->prepare($queryD);
    $statementD->execute();
    $resultD = $statementD->fetch(PDO::FETCH_ASSOC);

    if ($resultD["supplier_name_en"] != "") {

      $company_name_po = $resultD["supplier_name_en"];

    } else {

      $company_name_po = $resultD["supplier_name_th"];

    }

    if ($resultD["supplier_address_en"] != "") {

      $company_address_po = $resultD["supplier_address_en"];

    } else {

      $company_address_po = $resultD["supplier_address_th"];

    }

    $company_code_po = $resultD["supplier_code"];
    $des_cription_po = $resultC["des_cription"];

    $company_code_po = $resultD["supplier_code"];
    $des_cription_po = $resultC["des_cription"];

  } else {

    $company_code_po    = "";
    $po_number          = "";
    $company_name_po    = "";
    $company_address_po = "";
    $des_cription_po    = "";

  }

  if (isset($_POST["io_number"]) && $_POST["io_number"] != "") {

    $io_number = $_POST["io_number"];

    $queryA     = "SELECT * FROM io_report WHERE io_no = '" . $io_number . "' UNION ALL SELECT * FROM io_report_sv WHERE io_no = '" . $io_number . "' ";
    $statementA = $connection->prepare($queryA);
    $statementA->execute();
    $resultA = $statementA->fetch(PDO::FETCH_ASSOC);

    $q_number        = $resultA["quotation_no"];
    $des_cription_io = $resultA["des_cription"];

    $queryB     = "SELECT * FROM customer WHERE customer_code = '" . $resultA["customer_code"] . "' ";
    $statementB = $connection->prepare($queryB);
    $statementB->execute();
    $resultB = $statementB->fetch(PDO::FETCH_ASSOC);

    $company_code_io = $resultB["customer_code"];

    if ($resultB["company_name_en"] != "") {

      $company_name_io = $resultB["company_name_en"];

    } else {

      $company_name_io = $resultB["company_name_th"];

    }

    if ($resultB["address_en"] != "") {

      $company_address_io = $resultB["address_en"];

    } else {

      $company_address_io = $resultB["address_th"];

    }

  } else {

    $company_code_io    = "";
    $io_number          = "";
    $company_name_io    = "";
    $company_address_io = "";
    $des_cription_io    = "";
    $q_number           = "";

  }

  if ($io_number != "") {

    $company_code    = $company_code_io;
    $company_name    = $company_name_io;
    $company_address = $company_address_io;
    $des_cription    = $des_cription_io;

  } else if ($po_number != "") {

    $company_code    = $company_code_po;
    $company_name    = $company_name_po;
    $company_address = $company_address_po;
    $des_cription    = $des_cription_po;

  } else {

    $company_code    = "";
    $company_name    = "";
    $company_address = "";
    $des_cription    = "";

  }

  $file_name = $_FILES["attached"]["name"];
  $file      = $_FILES["attached"]["tmp_name"];
  $fileType  = strtolower(pathinfo($path . $file_name, PATHINFO_EXTENSION));

  if ($file && ($fileType == "pdf" || $fileType == "jpg" || $fileType == "jpeg")) {

    $queryX     = "SELECT max(subject_id) AS maxID FROM dailymonitor ";
    $statementX = $connection->prepare($queryX);
    $statementX->execute();
    $resultX = $statementX->fetch(PDO::FETCH_ASSOC);
    $nextID  = intval($resultX["maxID"]) + 1;
    $nextID  = strval($nextID);

    $fileName   = date('dmYHis');
    $fileName   = $nextID . "@" . $fileName . "." . $fileType;
    $uploadFile = $path . "" . $fileName;
    copy($file, $uploadFile);
    $attached = $fileName;

  } else {

    $attached = "";

  }

  $statement = $connection->prepare("INSERT INTO dailymonitor
  (subject_date, subject_name, subject_by, subject_department, category1, category2, action_person, response_person, response_department, subject_status, io_number, po_number, q_number, company_name, company_address, des_cription, remarks, pdf_attached, solutions, company_code)
  VALUES (:subject_date, :subject_name, :subject_by, :subject_department, :category1, :category2, :action_person, :response_person, :response_department, :subject_status, :io_number, :po_number, :q_number, :company_name, :company_address, :des_cription, :remarks, :pdf_attached, :solutions, :company_code)
  ");

  $result = $statement->execute(
    array(

      ':subject_date'        => $subject_date,
      ':subject_name'        => $_POST["subject_name"],
      ':subject_by'          => $pecperson,
      ':subject_department'  => $pecdepartment,
      ':category1'           => $_POST["category1"],
      ':category2'           => $_POST["category2"],
      ':action_person'       => $action_person,
      ':response_person'     => $response_person,
      ':response_department' => $response_department,
      ':subject_status'      => $_POST["subject_status"],
      ':io_number'           => $io_number,
      ':po_number'           => $po_number,
      ':q_number'            => $q_number,
      ':company_name'        => $company_name,
      ':company_address'     => $company_address,
      ':des_cription'        => $des_cription,
      ':remarks'             => $_POST["remarks"],
      ':pdf_attached'        => $attached,
      ':solutions'           => $_POST["solutions"],
      ':company_code'        => $company_code,
    )

  );

  $errorG = $statement->errorInfo();

  if ($errorG[2] == "") {

    header("Location:dailymonitor.php?page=new");
    

  } else {

    echo 'Data NOT Updated' . " " . $errorG[2];

  }
?>