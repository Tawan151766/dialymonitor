<?php
include "connectdb.php";

  if (isset($_POST['function']) && $_POST['function'] == 'searchBySubject') {
    $id = $_POST['id'];
    $sql = "SELECT * FROM `dailymonitor` WHERE subject_name LIKE '%$id%' ORDER BY `dailymonitor`.`subject_id` DESC";
    $query = mysqli_query($connection, $sql);
    $i = 1;
    foreach ($query as $value) {
      if ($value['pdf_attached'] != "") {

        $buffer    = explode(".", $value['pdf_attached']);
        $extension = strtolower($buffer[1]);
    
        if ($extension == "pdf") {
    
            $icon = '<a  type="button" class="p-3 m-1 btn btn-primary text-white btn-sm " href="./upload/dailymonitor/' . $value['pdf_attached'] . '" target="_blank"><i class=" fas fa-file-pdf"></i></i></a>';
    
        } else if ($extension == "jpg" || $extension == "jpeg") {
    
          $icon = '<a type="button" class="p-3 m-1 btn btn-primary text-white btn-sm" href="./upload/dailymonitor/' . $value['pdf_attached'] . '" target="_blank"><i class="fas fa-image"></i></a>';
    
        } else {
    
          $icon = "";
    
        }
    }if ($value['pdf_attached'] == "") {

      $icon = '<a type="button" class="p-3 m-1 btn btn-secondary text-white btn-sm"  target="_blank"><i class="fas fa-file-excel"></i></a>';
  }
        echo '<div class="mt-3 bg-light text-dark shadow-lg rounded">
        <div class="container-fluid">
        <div class="row">
        <div class="col-2">
         <p class="badge badge-primary text-wrap m-1 mt-4 p-2">'.$i++.'</p>
         </div>
        <div class="col-10">
          <div class="p-3 d-flex">
         <p class="m-1 text-muted font-weight-bold">FROM</p>
         <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['subject_by'].'</p>
         <p class="m-1 text-muted font-weight-bold">TO</p>
         <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['response_person'].'</p>
        <p class="m-1 text-muted font-weight-bold">DEPARTMENT OF</p>
         <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['response_department'].'</p> 
         <p class="m-1 p-2 badge badge-success text-wrap">'.$value['subject_date'].'</p>
         </div>
        </div>
        </div>
        </div>
        <div class="container-fluid">
         <div class="row">
          <div class="col-2">
          <h6 class="badge badge-primary ">'.$value['category1'].'</h6> <br>
          <p style="background-color:#7FC5FF;" class="m-2 badge  text-white">'.$value['category2'].'</p>
        </div>
         <div class="col-8">
        <div class="">
            <textarea name="subject_name" id="subject_name" rows="2" class="mb-1 form-control" readonly>'.$value['subject_name'].'</textarea>
          </div>
         </div>
         <div class="col-2">
        <a href="delect_daily.php?id='.$value['subject_id'] .'" type="button" class="p-3 m-1 btn btn-danger text-white btn-sm"><i class="fas fa-trash"></i></button>
         <a type="button"  role="button" aria-pressed="true" data-toggle="modal" data-target="#exampleModals'.$value['subject_id'].'" class="p-3 m-1 btn btn-warning text-white btn-sm"><i class="fas fa-eye"></i></a>
         '.$icon.' 
          </div>
           </div>
          </div>
        </div>';
        
    }
}
if (isset($_POST['function']) && $_POST['function'] == 'searchByDepartment') {
  $id = $_POST['id'];
  $sql = "SELECT * FROM `dailymonitor` WHERE response_department LIKE '%$id%' ORDER BY `dailymonitor`.`subject_id` DESC";
  $query = mysqli_query($connection, $sql);
  $i = 1;
  foreach ($query as $value) {
    if ($value['pdf_attached'] != "") {

      $buffer    = explode(".", $value['pdf_attached']);
      $extension = strtolower($buffer[1]);
  
      if ($extension == "pdf") {
  
          $icon = '<a  type="button" class="p-3 m-1 btn btn-primary text-white btn-sm " href="./upload/dailymonitor/' . $value['pdf_attached'] . '" target="_blank"><i class=" fas fa-file-pdf"></i></i></a>';
  
      } else if ($extension == "jpg" || $extension == "jpeg") {
  
        $icon = '<a type="button" class="p-3 m-1 btn btn-primary text-white btn-sm" href="./upload/dailymonitor/' . $value['pdf_attached'] . '" target="_blank"><i class="fas fa-image"></i></a>';
  
      } else {
  
        $icon = "";
  
      }
  }if ($value['pdf_attached'] == "") {

    $icon = '<a type="button" class="p-3 m-1 btn btn-secondary text-white btn-sm"  target="_blank"><i class="fas fa-file-excel"></i></a>';
}
    // echo '.$value['subject_name'.'];
      echo '<div class="mt-3 bg-light text-dark shadow-lg rounded">
      <div class="container-fluid">
              <div class="row">
                  <div class="col-2">
                      <p class="badge badge-primary text-wrap m-1 mt-4 p-2">'.$i++.'</p>
                  </div>
                  <div class="col-10">
                      <div class="p-3 d-flex">
                      <p class="m-1 text-muted font-weight-bold">FROM</p>
                      <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['subject_by'].'</p>
                      <p class="m-1 text-muted font-weight-bold">TO</p>
                      <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['response_person'].'</p>
                      <p class="m-1 text-muted font-weight-bold">DEPARTMENT OF</p>
                      <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['response_department'].'</p>
                      <p class="m-1 p-2 badge badge-success text-wrap">'.$value['subject_date'].'</p>
                      </div>
                  </div>
              </div>
          </div>
          <div class="container-fluid">
              <div class="row">
                  <div class="col-2">
                      <h6 class="badge badge-primary ">'.$value['category1'].'</h6> <br>
                      <p style="background-color:#7FC5FF;" class="m-2 badge  text-white">'.$value['category2'].'</p>
                  </div>
                  <div class="col-8">
                      <div class="">
                          <textarea name="subject_name" id="subject_name" rows="2" class="mb-1 form-control" readonly>'.$value['subject_name'].'</textarea>
                      </div>
                  </div>
                  <div class="col-2">
                  <a href="delect_daily.php?id='.$value['subject_id'] .'" type="button" class="p-3 m-1 btn btn-danger text-white btn-sm"><i class="fas fa-trash"></i></button>
                    <a type="button"  role="button" aria-pressed="true" data-toggle="modal" data-target="#exampleModals'.$value['subject_id'].'" class="p-3 m-1 btn btn-warning text-white btn-sm"><i class="fas fa-eye"></i></a>
                    '.$icon.' 
                    
                  </div>
              </div>
          </div>
      </div>';
  }
}
if (isset($_POST['function']) && $_POST['function'] == 'searchByCategory') {
  $id = $_POST['id'];
  $sql = "SELECT * FROM `dailymonitor` WHERE category1 LIKE '%$id%' ORDER BY `dailymonitor`.`subject_id` DESC";
  $query = mysqli_query($connection, $sql);
  $i = 1;
  foreach ($query as $value) {
    if ($value['pdf_attached'] != "") {

      $buffer    = explode(".", $value['pdf_attached']);
      $extension = strtolower($buffer[1]);
  
      if ($extension == "pdf") {
  
          $icon = '<a  type="button" class="p-3 m-1 btn btn-primary text-white btn-sm " href="./upload/dailymonitor/' . $value['pdf_attached'] . '" target="_blank"><i class=" fas fa-file-pdf"></i></i></a>';
  
      } else if ($extension == "jpg" || $extension == "jpeg") {
  
        $icon = '<a type="button" class="p-3 m-1 btn btn-primary text-white btn-sm" href="./upload/dailymonitor/' . $value['pdf_attached'] . '" target="_blank"><i class="fas fa-image"></i></a>';
  
      } else {
  
        $icon = "";
  
      }
  }if ($value['pdf_attached'] == "") {

    $icon = '<a type="button" class="p-3 m-1 btn btn-secondary text-white btn-sm"  target="_blank"><i class="fas fa-file-excel"></i></a>';
}
    // echo '.$value['subject_name'.'];
      echo '<div class="mt-3 bg-light text-dark shadow-lg rounded">
      <div class="container-fluid">
              <div class="row">
                  <div class="col-2">
                      <p class="badge badge-primary text-wrap m-1 mt-4 p-2">'.$i++.'</p>
                  </div>
                  <div class="col-10">
                      <div class="p-3 d-flex">
                      <p class="m-1 text-muted font-weight-bold">FROM</p>
                      <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['subject_by'].'</p>
                      <p class="m-1 text-muted font-weight-bold">TO</p>
                      <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['response_person'].'</p>
                      <p class="m-1 text-muted font-weight-bold">DEPARTMENT OF</p>
                      <p class="m-1 p-2 badge badge-primary text-wrap">'.$value['response_department'].'</p>
                      <p class="m-1 p-2 badge badge-success text-wrap">'.$value['subject_date'].'</p>
                      </div>
                  </div>
              </div>
          </div>
          <div class="container-fluid">
              <div class="row">
                  <div class="col-2">
                      <h6 class="badge badge-primary ">'.$value['category1'].'</h6> <br>
                      <p style="background-color:#7FC5FF;" class="m-2 badge  text-white">'.$value['category2'].'</p>
                  </div>
                  <div class="col-8">
                      <div class="">
                          <textarea name="subject_name" id="subject_name" rows="2" class="mb-1 form-control" readonly>'.$value['subject_name'].'</textarea>
                      </div>
                  </div>
                  <div class="col-2">
                  <a href="delect_daily.php?id='.$value['subject_id'] .'" type="button" class="p-3 m-1 btn btn-danger text-white btn-sm"><i class="fas fa-trash"></i></button>
                  <a type="button"  role="button" aria-pressed="true" data-toggle="modal" data-target="#exampleModals'.$value['subject_id'].'" class="p-3 m-1 btn btn-warning text-white btn-sm"><i class="fas fa-eye"></i></a>
                    '.$icon.' 
                    
                  </div>
              </div>
          </div>
      </div>';
  }
}
?>