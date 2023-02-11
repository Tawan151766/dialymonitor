<?php
      session_start();
      date_default_timezone_set("Asia/Bangkok");
      include "connectdb.php";
      ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NU-Careers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <div class="mt-5"></div>
<div class="container-fluid text-center">
        <div style="width:auto;" class="">
            <img class="rounded" src="Header_115.jpg" >
        </div>
    </div>
    <div class="mt-5"></div>
    <div class="container">
    <div class="container  rounded ">
        
    <div style="width:1000px;" class="container">
        <div class="row">
        <div class="col-4">
        <div class="card m-2 " style="width: 18rem;">
  <div class="card-body ">
    <h5 class="card-title">GeneralInfomatin ข้อมูลทั่วไป</h5>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['fullname'] ?>" readonly>
      <label for="floatingInputGrid">ชื่อ นามสกุล Full Name</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['CITIZEN_ID'] ?>" readonly>
      <label for="floatingInputGrid">เลขประจำตัวประชาชน CITIZEN</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['std_id'] ?>" readonly>
      <label for="floatingInputGrid">เลขประจำตัวนักศึกษา Student Code</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['gender'] ?>" readonly>
      <label for="floatingInputGrid">เพศ Gender</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['degree'] ?>" readonly>
      <label for="floatingInputGrid">การศึกษาระดับ Degree</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['program_id'] ?>" readonly>
      <label for="floatingInputGrid">วุฒิที่สำเร็จการศึกษา Program</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['faculty_id'] ?>" readonly>
      <label for="floatingInputGrid">รหัสคณะ Faculty Code</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating mt-1">
      <input type="text" class="form-control" id="floatingInputGrid" value="<?php echo $_SESSION['date_of_birth'] ?>" readonly>
      <label for="floatingInputGrid">วัน/เดือน/ปีเกิด Date of birth</label>
    </div>
  </div>
        <!-- Button trigger modal -->
<div class="d-grid gap-2">
  <?php
  if($_SESSION['workstatus_id'] == ""){
    echo'<button type="button" class="btn btn-primary mt-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Part 1 คุณมีงานทำแล้วหรือยัง Current Work status ?
    </button>';
  }else{
    echo'<button type="button" class="btn btn-primary mt-2" >
    คุณทำเเบบสอบถามแล้ว
    </button>';
  } ?>
</div>
<!-- Button trigger modal -->
  </div>
</div>
        </div>
        <div class="col-8">
        <div class="d-grid gap-2 mt-2">
        <a href="logout.php" class="btn btn btn-danger mb-5 mt-2">LOGOUT</a>
        <?php
  if($_SESSION['workstatus_id'] == "2"){
    echo'<button class="btn btn-primary " type="button" data-bs-toggle="modal" data-bs-target="#exampleModal2">Part 3 แบบสอบถามสำหรับผู้ที่ยังไม่มีงานทำ For those who has no job</button>';
  }else{
    echo'<button class="btn btn-success mt-5" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal1">Part 2 แบบสอบถามสำหรับผู้ที่มีงานทำ For Employed</button>';
  } ?>
  
  
  <button class="btn btn-secondary" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal3">Part 4  แบบสอบถามสำหรับผู้ตัองการศึกษาต่อ Further study</button>
  <button type="button" class="btn btn-warning text-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Part 5 ข้อเสนอแนะ Suggestions</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <form action="insert_data_suggestions.php" method="post">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">ข้อเสนอแนะ Suggestions</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example"  name="facilitate">
    <option selected>ตอบคำถาม</option>
    <option value="ภาษาอังกฤษ The english language.">ภาษาอังกฤษ The english language.</option>
    <option value="ภาษาจีน The chinese language.">ภาษาจีน The chinese language.</option>
    <option value="คอมพิวเตอร์ Computer literary.">คอมพิวเตอร์ Computer literary.</option>
    <option value="ภาษาในอาเซียน The asian language.">ภาษาในอาเซียน The asian language.</option>
    <option value="บัญชี Accountancy/Business administraion.">บัญชี Accountancy/Business administraion.</option>
    <option value="การใช้งานอินเตอร์เน็ต Internet using.">การใช้งานอินเตอร์เน็ต Internet using.</option>
    <option value="การฝึกปฏิบัติจริง Practical/Training course.">การฝึกปฏิบัติจริง Practical/Training course.</option>
    <option value="เทคนิคการวิจัย Research techniques.">เทคนิคการวิจัย Research techniques.</option>
    <option selected="อื่นๆ ระบุ Other (Please specify">อื่นๆ ระบุ Other (Please specify</option>
  </select>
  <label for="floatingSelect">30.ท่านคิดว่าในหลักสูตรของมหาวิทยาลัย ควรเพิ่มรายวิชาหรือความรู้เรื่องใดที่จะเอื้อประโยชน์ต่อการประกอบอาชีพของท่านได้มากยิ่งขึ้น (ตอบได้มากกว่า 1 ข้อ)*What are the course that should be added to help facilitate your career? (Your answers can be more than 1 choice) </label>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="courses">
      <label for="floatingInputGrid">31.ข้อเสนอแนะเกี่ยวกับหลักสูตรและสาขาวิชาเรียน Suggestions on courses and curricula you look.</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="learning">
      <label for="floatingInputGrid">32. ข้อเสนอแนะเกี่ยวกับการเรียนการสอน Suggestions on teaching and  learning.</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="development_activites">
      <label for="floatingInputGrid">33. ข้อเสนอแนะเกี่ยวกับกิจกรรมพัฒนานักศึกษา Suggestion on student development activites.</label>
    </div>
  </div>
</div>
<label for="" class="m-1 text-danger">** ตอบเฉพาะบัณฑิตที่ผ่านโครงการสหกิจศึกษามหาวิทยาลัยนเรศวร (For those who were in co-operative education.) จากที่ท่านได้ผ่านการเรียนการสอนรายวิชาสหกิจศึกษา ท่าได้รับผลอะไรจากการเรียนดังกล่าวไปประยุกต์ในการปฏิบัติงานจริงในปัจจุบัน (ตอบได้มากกว่า 1 ข้อ) From your previous experiences with co-operative education program, what did you get from the program, and how can you apply them to your career?</label>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="knowledge">
      <label for="floatingInputGrid">34.ด้านความรู้ที่ใช้ในการปฏิบัติงาน In term of knowledge.</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="skill_process">
      <label for="floatingInputGrid">35.ด้านทักษะ/กระบวนการในการปฏิบัติงาน In term of skill/work process.</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="reflection_behavior">
      <label for="floatingInputGrid">36.ด้านเจตคติ (ความคิด ความรู้สึก พฤติกรรม) In term of attitudes (thought, reflection, behavior)
</label>
    </div>
  </div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Summit</button>
      </div>
      </form>
    </div>
    
  </div>
</div>
<!-- modal -->
</div>
</div>
        </div>
        </div>
    </div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <form action="insert_data_status_work.php" method="post">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">คุณมีงานทำแล้วหรือยัง ?</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="form-floating">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="workstatus_id">
    <option selected>ตอบคำถาม</option>
    <?php
    $sql   = "SELECT * FROM `work_status`;";
    $query = mysqli_query($connection, $sql);
    foreach ($query as $value) {
      echo'<option value="'.$value['workstatus_id'].'">'.$value['workstatus_name'].'</option>';
    }
  ?>
    </select>
  <label for="floatingSelect">5.สภาพการทำงานปัจจุบัน Current Work status</label>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </form>
</div>
<!-- Modal -->
<!-- Modal1 -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
    <form action="insert_data_employed.php" method="post">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">ตอนที่ 2 การสมัครงาน และการทำงาน (สำหรับผู้มีงานทำแล้ว) Part 2 Job Application and Work (For Employed)
</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
<div class="form-floating">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="src_job_id">
    <option selected>ตอบคำถาม</option>
    <?php
    $sql1   = "SELECT * FROM `d_source_jobs`;";
    $query1 = mysqli_query($connection, $sql1);
    foreach ($query1 as $value1) {
      echo'<option value="'.$value1['src_job_id'].'">'.$value1['src_job_name'].'</option>';
    }
  ?>
  </select>
  <label for="floatingSelect">6.แหล่งข้อมูลในการหางานทำ*  Source of job application.</label>
  <!-- end -->



</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example"  name="occup_type_id">
  <option selected>ตอบคำถาม</option>
  <?php
    $sql1   = "SELECT * FROM `d_occup_type`;";
    $query1 = mysqli_query($connection, $sql1);
    foreach ($query1 as $value1) {
      echo'<option value="'.$value1['occup_type_id'].'">'.$value1['occup_type_desc'].'</option>';
    }?>
    
  </select>
  <label for="floatingSelect">7.ประเภทงานที่ทำ* Job Category</label>
</div>
<!-- end -->


<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="talent_id">
  <option selected>ตอบคำถาม</option>
  <?php
    $sql1   = "SELECT * FROM `d_talent`;";
    $query1 = mysqli_query($connection, $sql1);
    foreach ($query1 as $value1) {
      echo'<option value="'.$value1['talent_id'].'">'.$value1['talent_name'].'</option>';
    }?>
  </select>
  <label for="floatingSelect">8.ท่านคิดว่าความรู้ความสามารถพิเศษด้านใดที่ช่วยให้ท่านได้ทำงาน* What  special skill or knowledge have you gained to help you get a job?	</label>
</div>

<!-- end -->
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
    <select class="form-select" id="floatingSelect" aria-label="Floating label select example"  name="possition_id">
  <option selected>ตอบคำถาม</option>
  <?php
    $sql2   = "SELECT * FROM `d_position_career`";
    $query2 = mysqli_query($connection, $sql2);
    foreach ($query2 as $value2) {
      echo'<option value="'.$value2['possition_id'].'">'.$value2['position_name'].'</option>';
    }?>
    
  </select>
      <label for="floatingInputGrid">9.ตำแหน่งงาน * Position Type  :</label>
    </div>
    <!-- end -->


  </div>
</div>
<label for="" class="m-1 text-danger">** 10.สถานที่ทำงานปัจจุบัน (ให้บัณฑิตกรอกข้อมูลให้ครบถ้วนเพื่อประโยชน์ในการติดต่อประสานงานระหว่างมหาวิทยาลัยและหน่วยงานของท่าน)* Current workplace address (Please fill as much detail as posible for cooperation between university and the workplace.)</label>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="add_name">
      <label for="floatingInputGrid">10.1.ชื่อหน่วยงาน* :Workplace name</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="workplace_tel">
      <label for="floatingInputGrid">10.2.โทรศัพท์ที่ทำงาน* :Tel.</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="workplace_fax">
      <label for="floatingInputGrid">10.3.โทรสาร* :Fax.	</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="workplace_email">
      <label for="floatingInputGrid">10.4.อีเมล* :Email	</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="workplace_number">
      <label for="floatingInputGrid">10.4.ที่ตั้งเลขที่* :House no.	
</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="village_number">
      <label for="floatingInputGrid">10.5.หมู่ที่* :Village no.</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="building_name">
      <label for="floatingInputGrid">10.6.อาคาร/ชื่อนิคม* :Building	</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="floor">
      <label for="floatingInputGrid">10.7.ชั้น* :Floor</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="alley_or_ane">
      <label for="floatingInputGrid">10.8.ตรอก/ซอย* :Alley/Lane</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="street_name">
      <label for="floatingInputGrid">10.9.ถนน* :Street	</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="nation">
      <label for="floatingInputGrid">10.10.ประเทศ* :Nation</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid "  placeholder="โปรดระบุ Pleas Answer" name="post_code">
      <label for="floatingInputGrid">10.11.รหัสไปรษณีย์* :Postal Code</label>
    </div>
  </div>
</div>


<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="worktype_id">
    <option selected>ตอบคำถาม</option>
    <?php
    $sql2   = "SELECT * FROM `d_worktype`";
    $query2 = mysqli_query($connection, $sql2);
    foreach ($query2 as $value2) {
      echo'<option value="'.$value2['worktype_id'].'">'.$value2['worktype_name'].'</option>';
    }?>
</select>
  <label for="floatingSelect">11.ประเภทกิจการ Business Type</label>
</div>


<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
    <select class="form-select" id="floatingSelect" aria-label="Floating label select example"  name="salary_id">
  <option selected>ตอบคำถาม</option>
  <?php
    $sql2   = "SELECT * FROM `d_salary`";
    $query2 = mysqli_query($connection, $sql2);
    foreach ($query2 as $value2) {
      echo'<option value="'.$value2['salary_id'].'">'.$value2['salary_amount'].'</option>';
    }?>
    
  </select>
      <label for="floatingInputGrid">12.เงินเดือนหรือรายได้เฉลี่ยต่อเดือน* : Salary</label>
    </div>
  </div>
</div>



<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="work_satisfy_id">
    <option selected>ตอบคำถาม</option>
    <?php
    $sql2   = "SELECT * FROM `d_work_satisfy`";
    $query2 = mysqli_query($connection, $sql2);
    foreach ($query2 as $value2) {
      echo'<option value="'.$value2['work_satisfy_id'].'">'.$value2['work_satisfy_name'].'</option>';
    }?>
</select>
  <label for="floatingSelect">13.ท่านมีความพอใจต่องานที่ทำหรือไม่* Do you satisfy with your job?</label>
</div>



<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="time_findwork_id">
  <option selected>ตอบคำถาม</option>
    <?php
    $sql2   = "SELECT * FROM `d_time_findwork`";
    $query2 = mysqli_query($connection, $sql2);
    foreach ($query2 as $value2) {
      echo'<option value="'.$value2['time_findwork_id'].'">'.$value2['time_findwork_name'].'</option>';
    }?>
  </select>
  <label for="floatingSelect">14.หลังจากสำเร็จการศึกษาแล้ว ท่านได้งานทำในระยะเวลาเท่าไร* How long does it take until you get a job after graduation?</label>
</div>


<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="match_edu_id">
  <option selected>ตอบคำถาม</option>
    <?php
    $sql3   = "SELECT * FROM `d_match_edu`";
    $query3 = mysqli_query($connection, $sql3);
    foreach ($query3 as $value3) {
      echo'<option value="'.$value3['match_edu_id'].'">'.$value3['match_edu_desc'].'</option>';
    }?>
    </select>
  <label for="floatingSelect">15.ลักษณะงานที่ทำตรงกับสาขาที่ท่านได้สำเร็จการศึกษาหรือไม่ (ตรงสาขาตามวุฒิปริญญาที่ได้รับ)* Does your job  match your degree/diploma?	</label>
</div>


<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="apply_edu_id">
    <option selected>ตอบคำถาม</option>
    <?php
    $sql3   = "SELECT * FROM `d_apply_edu`";
    $query3 = mysqli_query($connection, $sql3);
    foreach ($query3 as $value3) {
      echo'<option value="'.$value3['apply_edu_id'].'">'.$value3['apply_edu_values'].'</option>';
    }?>
  </select>
  <label for="floatingSelect">16.ท่านสามารถนำความรู้จากสาขาวิชาที่เรียนมาประยุกต์ใช้กับหน้าที่การงานที่ทำอยู่ขณะนี้เพียงใด* How much do you apply the knowledge you learned from the  university to your job? 	</label>
</div>



<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="desire_study_id">
    <option selected>ตอบคำถาม</option>
    <?php
    $sql3   = "SELECT * FROM `d_desire_study_further`";
    $query3 = mysqli_query($connection, $sql3);
    foreach ($query3 as $value3) {
      echo'<option value="'.$value3['desire_study_id'].'">'.$value3['desire_desc'].'</option>';
    }?>
  </select>
  <label for="floatingSelect">17.การศึกษาต่อ* Desire to further study.</label>
</div>



</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </form>
</div>
<!-- Modal1 -->
<!-- Modal2 -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
    <form action="insert_data_not_job.php" method="post">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">ตอนที่ 3 การสมัครงาน และการทำงาน (สำหรับผู้ที่ยังไม่ได้ทำงาน) Job Application and work (For those who has no job)
</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="why_no_job">
    <option selected>ตอบคำถาม</option>
    <option value="เกณฑ์ทหาร I was called for military service.">เกณฑ์ทหาร I was called for military service.</option>
    <option value="ต้องการประกอบอาชีพอิสระ I want to be self-employed.">ต้องการประกอบอาชีพอิสระ I want to be self-employed.</option>
    <option value="ยังไม่ประสงค์ที่จะทำงาน I do not want to get a job.">ยังไม่ประสงค์ที่จะทำงาน I do not want to get a job.</option>
    <option value="การจัดตลาดนัดพบแรงงาน Job Fair">การจัดตลาดนัดพบแรงงาน Job Fair</option>
    <option value="รอฟังคำตอบจากหน่วยงาน I am waiting for a call from where I applied for a job.">รอฟังคำตอบจากหน่วยงาน I am waiting for a call from where I applied for a job.</option>
    <option value="หางานทำไม่ได้ I cannot find a job.">หางานทำไม่ได้ I cannot find a job.</option>
    <option value="อุปสมบท I went ordination.">อุปสมบท I went ordination.</option>
    <option selected="อื่นๆ ระบุ Other (Please specify">อื่นๆ ระบุ Other (Please specify</option>
  </select>
  <label for="floatingSelect">18.สาเหตุที่ยังไม่ได้ทำงาน โปรดระบุสาเหตุที่สำคัญ 1 ข้อ ต่อไปนี้* Why do not you have a job?</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="problem_src_job">
    <option selected>ตอบคำถาม</option>
    <option value="ไม่มีปัญหา No, I do not.">ไม่มีปัญหา No, I do not.</option>
    <option value="มีปัญหา Yes, I do.">มีปัญหา Yes, I do.</option>
    <option selected="อื่นๆ ระบุ Other (Please specify">อื่นๆ ระบุ Other (Please specify</option>
  </select>
  <label for="floatingSelect">19.ท่านมีปัญหาในการหางานทำหลังสำเร็จการศึกษาหรือไม่* Do you have any difficulties in finding a job after graduation?</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="why_problem_src_job">
    <option selected>ตอบคำถาม</option>
    <option value="เกรดเฉลี่ยไม่ถึงเกณฑ์ที่กำหนด My GPA did not meet the requirement.">เกรดเฉลี่ยไม่ถึงเกณฑ์ที่กำหนด My GPA did not meet the requirement.</option>
    <option value="ขาดคนหรือเงินค้ำประกัน I do not have the one who can be my financial guarantor.">ขาดคนหรือเงินค้ำประกัน I do not have the one who can be my financial guarantor.</option>
    <option value="ขาดทักษะภาษาต่างประเทศ My foreign language skill did not meet the requirement.">ขาดทักษะภาษาต่างประเทศ My foreign language skill did not meet the requirement.</option>
    <option value="เงินเดือนน้อย Low salary.">เงินเดือนน้อย Low salary.</option>
    <option value="ต้องสอบจึงไม่อยากสมัคร I do not like to do a test.">ต้องสอบจึงไม่อยากสมัคร I do not like to do a test.</option>
    <option value="ไม่ทราบแหล่งงาน I do not know where I can find a job.">ไม่ทราบแหล่งงาน I do not know where I can find a job.</option>
    <option value="สอบเข้าทำงานไม่ได้ I cannot pass the test.">สอบเข้าทำงานไม่ได้ I cannot pass the test.</option>
    <option value="หน่วยงานไม่ต้องการ I was rejected by organization.">หน่วยงานไม่ต้องการ I was rejected by organization.</option>
    <option value="หางานที่ถูกใจไม่ได้ I cannot find my desired job.">หางานที่ถูกใจไม่ได้ I cannot find my desired job.</option>
    <option selected="อื่นๆ ระบุ Other (Please specify">อื่นๆ ระบุ Other (Please specify</option>
  </select>
  <label for="floatingSelect">19.1.ถ้ามีปัญหาโปรดระบุปัญหาที่สำคัญที่สุด 1 ข้อ If Yes, why? Please choose only one.
</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="country_job">
    <option selected>ตอบคำถาม</option>
    <option value="Thailand">Thailand</option>
    <option value="Vietnam">Vietnam</option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
  </select>
  <label for="floatingSelect">20.ประเทศที่ต้องการทำงาน* Where a specific location would you like  to work?</label>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid" name="desired_position">
      <label for="floatingInputGrid">21.ตำแหน่งที่ต้องการทำงาน* What is your desired position?</label>
    </div>
  </div>
</div>
<div class="row g-2 mt-1">
  <div class="col-md">
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInputGrid" name="dev_skills">
      <label for="floatingInputGrid">22.ความต้องการพัฒนาทักษะ/ความรู้  หลักสูตร* What is additional skills/curricula that you want to learn?</label>
    </div>
  </div>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="reval_infomation">
    <option selected>ตอบคำถาม</option>
    <option value="ยินยอมเปิดเผยข้อมูล Yes, I do.">ยินยอมเปิดเผยข้อมูล Yes, I do.</option>
    <option value="ไม่ยินยอมเปิดเผยข้อมูล No, I do not.">ไม่ยินยอมเปิดเผยข้อมูล No, I do not.</option>
  </select>
  <label for="floatingSelect">23.ความประสงค์ในการเปิดเผยข้อมูลแก่นายจ้าง/สถานประกอบการเพื่อพิจารณาเข้าทำงาน* Do you want to reval your personal information to the potential employer/organizations?</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="reval_infomation_yes">
    <option selected>ตอบคำถาม</option>
    <option value="ยินยอมเปิดเผยข้อมูลต่อนายจ้างทุกประเภท Yes, I do. All of my information can be accessed.">ยินยอมเปิดเผยข้อมูลต่อนายจ้างทุกประเภท Yes, I do. All of my information can be accessed.</option>
    <option value="ยินยอมเปิดเผยข้อมูลยกเว้นนายจ้างประเภทจ้างเหมาแรงงาน Yes, I do. My information can be accessed, except labor contract.">ยินยอมเปิดเผยข้อมูลยกเว้นนายจ้างประเภทจ้างเหมาแรงงาน Yes, I do. My information can be accessed, except labor contract.</option>
    <option value="ยินยอมเปิดเผยข้อมูลยกเว้นนายจ้างประเภทขายประกัน/ขายตรง Yes, I do. My information can be accessed, except insurance and direct sale contract.">ยินยอมเปิดเผยข้อมูลยกเว้นนายจ้างประเภทขายประกัน/ขายตรง Yes, I do. My information can be accessed, except insurance and direct sale contract.</option>
    <option value="ยินยอมเปิดเผยข้อมูลยกเว้นนายจ้างประเภทจ้างเหมาแรงงาน และประเภทขายประกัน/ขายตรง Yes, I do. My information can be accessed, except labor contract, insurance and direct sale contract.">ยินยอมเปิดเผยข้อมูลยกเว้นนายจ้างประเภทจ้างเหมาแรงงาน และประเภทขายประกัน/ขายตรง Yes, I do. My information can be accessed, except labor contract, insurance and direct sale contract.</option>
  </select>
  <label for="floatingSelect">23.1.หากยินยอมเปิดเผยข้อมูลโปรดระบุ 1 ข้อ * If yes, please choose only one from the folloing items.</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="fur_study">
    <option selected>ตอบคำถาม</option>
    <option value="ต้องการศึกษาต่อ Want to further my education">ต้องการศึกษาต่อ (ข้ามไปตอบตอนที่ 4) Want to further my education. (Go to part 4)</option>
    <option value="ไม่ต้องการศึกษาต่อ Don't want to further my education.">ไม่ต้องการศึกษาต่อ (ข้ามไปตอบตอนที่ 5) Don't want to further my education. (Go to part 5)</option>
  </select>
  <label for="floatingSelect">24.การศึกษาต่อ* Further study.	</label>
</div>
</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="summit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </form>
</div>
<!-- Modal2 -->
<!-- Modal3 -->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
<form action="insert_data_con_study.php" method="post">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">การศึกษาต่อ Further study.
</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="degree_edu">
    <option selected>ตอบคำถาม</option>
    <option value="ประกาศนียบัตรวิชาชีพชั้นสูง Diploma in Vocaitonal Education">ประกาศนียบัตรวิชาชีพชั้นสูง Diploma in Vocaitonal Education</option>
    <option value="อนุปริญญา Associate Degree">อนุปริญญา Associate Degree</option>
    <option value="ปริญญาตรี Bachelor Degree">ปริญญาตรี Bachelor Degree</option>
    <option value="ประกาศนียบัตรบัณฑิต Graduate Diploma">ประกาศนียบัตรบัณฑิต Graduate Diploma</option>
    <option value="ปริญญาโท Master Degree">ปริญญาโท Master Degree</option>
    <option value="ปริญญาโท-เอก Master Degree - Doctorate Program">ปริญญาโท-เอก Master Degree - Doctorate Program</option>
    <option value="ประกาศนียบัตรบัณฑิตชั้นสูง Higher Graduate Diploma">ประกาศนียบัตรบัณฑิตชั้นสูง Higher Graduate Diploma</option>
    <option value="ปริญญาเอก Doctorate Program">ปริญญาเอก Doctorate Program</option>
    <option value="ประกาศนียบัตรหรือหลักสูตรเฉพาะ(ที่บรรจุในอัตราเงินเดือนสูงกว่าปริญญาเอก) Diploma/specialize coures (More salary than Ph.D.)">ประกาศนียบัตรหรือหลักสูตรเฉพาะ(ที่บรรจุในอัตราเงินเดือนสูงกว่าปริญญาเอก) Diploma/specialize coures (More salary than Ph.D.)</option>
  </select>
  <label for="floatingSelect">25.ระดับการศึกษาที่ท่านต้องการศึกษาต่อ/กำลังศึกษาต่อ* Please select degree you want to study/you are studying. </label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="major_edu">
    <option value="สาขาวิชาเดิม The same major.">สาขาวิชาเดิม The same major.</option>
    <option selected>สาขาวิชาอื่นที่ไม่ใช่สาขาวิชาเดิม (ระบุ) Other major,(please specify)</option>
    <option selected>ตอบคำถาม</option>
  </select>
  <label for="floatingSelect">26.สาขาวิชาที่ท่านต้องการศึกษาต่อ/กำลังศึกษาต่อ* Please select Majors you want to study/you are studying.</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="university_type">
    <option value="รัฐบาล Public Institution/university">รัฐบาล Public Institution/university</option>
    <option value="เอกชน Private university">เอกชน Private university</option>
    <option value="ต่างประเทศ Overseas institution/university">ต่างประเทศ Overseas institution/university</option>
    <option selected>ตอบคำถาม</option>
    <option selected>อื่นๆ ระบุ Other (Please specify</option>
  </select>
  <label for="floatingSelect">27.ประเภทของสถาบันการศึกษา/มหาวิทยาลัยที่ท่านต้องการศึกษาต่อ* Please select the institution/university types you want to study/you are studying.</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="continuing_study">
    <option value="งานที่ต้องการต้องใช้วุฒิสูงกว่า ปริญญาตรี I nee to get a higher degree to apply for my desired job.">งานที่ต้องการต้องใช้วุฒิสูงกว่า ปริญญาตรี I nee to get a higher degree to apply for my desired job.</option>
    <option value="ได้รับทุนศึกษาต่อ I got a scholarship.">ได้รับทุนศึกษาต่อ I got a scholarship.</option>
    <option value="เป็นความต้องการของตนเอง It is my own will.">เป็นความต้องการของตนเอง It is my own will.</option>
    <option value="เป็นความต้องการของบิดา/มารดา หรือผู้ปกครอง Parents/guardian's request.">เป็นความต้องการของบิดา/มารดา หรือผู้ปกครอง Parents/guardian's request.</option>
    <option selected>อื่นๆ ระบุ Other (Please specify</option>
    <option selected>ตอบคำถาม</option>
  </select>
  <label for="floatingSelect">28.เหตุผลที่ทำให้ท่านตัดสินใจศึกษา* Why do you want to continuing your study?	</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="continuing_study_problem">
    <option value="ไม่มีปัญหา No, I do not.">ไม่มีปัญหา No, I do not.</option>
    <option value="มีปัญหา Yes, I do.">มีปัญหา Yes, I do.</option>
    <option selected>ตอบคำถาม</option>
  </select>
  <label for="floatingSelect">29.ท่านมีปัญหาในการศึกษาต่อหรือไม่?* Do you have any difficulties in continuing your study?</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="answer_continuing_study_problem">
    <option value="ข้อมูลสถานที่ศึกษาต่อไม่เพียงพอ I do not have enough information on where I want to continue my study.">ข้อมูลสถานที่ศึกษาต่อไม่เพียงพอ I do not have enough information on where I want to continue my study.</option>
    <option value="ขาดความรู้พื้นฐานในการศึกษาต่อ Lack of basic knowledge on continuing my study">ขาดความรู้พื้นฐานในการศึกษาต่อ Lack of basic knowledge on continuing my study</option>
    <option value="ขาดแคลนเงินทุน Lack of budget.">ขาดแคลนเงินทุน Lack of budget.</option>
    <option value="คุณสมบัติในการสมัครเรียน I do not qualified to study.">คุณสมบัติในการสมัครเรียน I do not qualified to study.</option>
    <option selected>ตอบคำถาม</option>
  </select>
  <label for="floatingSelect">29.1.ถ้ามีปัญหา โปรดระบุ สาเหตุที่สำคัญที่สุด 1 ข้อ If Yes, Please choose the most inportant reason.</label>
</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="summit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</form>
</div>
<!-- Modal3 -->
<!-- Modal3 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel4" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">การศึกษาต่อ Further study.
</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="">
    <option selected>ตอบคำถาม</option>
    <option value="ประกาศนียบัตรวิชาชีพชั้นสูง Diploma in Vocaitonal Education">ประกาศนียบัตรวิชาชีพชั้นสูง Diploma in Vocaitonal Education</option>
    <option value="อนุปริญญา Associate Degree">อนุปริญญา Associate Degree</option>
    <option value="ปริญญาตรี Bachelor Degree">ปริญญาตรี Bachelor Degree</option>
    <option value="ประกาศนียบัตรบัณฑิต Graduate Diploma">ประกาศนียบัตรบัณฑิต Graduate Diploma</option>
    <option value="ปริญญาโท Master Degree">ปริญญาโท Master Degree</option>
    <option value="ปริญญาโท-เอก Master Degree - Doctorate Program">ปริญญาโท-เอก Master Degree - Doctorate Program</option>
    <option value="ประกาศนียบัตรบัณฑิตชั้นสูง Higher Graduate Diploma">ประกาศนียบัตรบัณฑิตชั้นสูง Higher Graduate Diploma</option>
    <option value="ปริญญาเอก Doctorate Program">ปริญญาเอก Doctorate Program</option>
    <option value="ประกาศนียบัตรหรือหลักสูตรเฉพาะ(ที่บรรจุในอัตราเงินเดือนสูงกว่าปริญญาเอก) Diploma/specialize coures (More salary than Ph.D.)">ประกาศนียบัตรหรือหลักสูตรเฉพาะ(ที่บรรจุในอัตราเงินเดือนสูงกว่าปริญญาเอก) Diploma/specialize coures (More salary than Ph.D.)</option>
  </select>
  <label for="floatingSelect">25.ระดับการศึกษาที่ท่านต้องการศึกษาต่อ/กำลังศึกษาต่อ* Please select degree you want to study/you are studying. </label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="">
    <option value="สาขาวิชาเดิม The same major.">สาขาวิชาเดิม The same major.</option>
    <option selected>สาขาวิชาอื่นที่ไม่ใช่สาขาวิชาเดิม (ระบุ) Other major,(please specify)</option>
    <option selected>ตอบคำถาม</option>
  </select>
  <label for="floatingSelect">26.สาขาวิชาที่ท่านต้องการศึกษาต่อ/กำลังศึกษาต่อ* Please select Majors you want to study/you are studying.</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="">
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option selected>ตอบคำถาม</option>
    <option selected="อื่นๆ ระบุ Other (Please specify">อื่นๆ ระบุ Other (Please specify</option>
  </select>
  <label for="floatingSelect">27.ประเภทของสถาบันการศึกษา/มหาวิทยาลัยที่ท่านต้องการศึกษาต่อ* Please select the institution/university types you want to study/you are studying.</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="">
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option selected="อื่นๆ ระบุ Other (Please specify">อื่นๆ ระบุ Other (Please specify</option>
    <option selected>ตอบคำถาม</option>
  </select>
  <label for="floatingSelect">28.เหตุผลที่ทำให้ท่านตัดสินใจศึกษา* Why do you want to continuing your study?	</label>
</div>
<div class="form-floating mt-1">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="">
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option value=""></option>
    <option selected="อื่นๆ ระบุ Other (Please specify">อื่นๆ ระบุ Other (Please specify</option>
    <option selected>ตอบคำถาม</option>
  </select>
  <label for="floatingSelect">29.ท่านมีปัญหาในการศึกษาต่อหรือไม่?* Do you have any difficulties in continuing your study?</label>
</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal3 -->
    </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</html>