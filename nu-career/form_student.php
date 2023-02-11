<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NU-Careers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body><div id="login ">
            <h1 class="text-center text-primary p-5">Form Insert</h1>
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <form id="login-form" class="form shadow-lg p-2 rounded" action="insert_study.php" method="post">
                                <h3 class="text-center text-primary">student</h3>
                                <div class="form-group">
                                <div class="col-md">
                                <div class="form-floating mt-1">
                                    <input type="text" class="form-control" id="floatingInputGrid" value=""  name="student_name">
                                    <label for="floatingInputGrid">ชื่อ นามสกุล Full Name</label>
                                </div>
                                <div class="form-floating mt-1">
                                    <input type="text" class="form-control" id="floatingInputGrid" value=""  name="student_code">
                                    <label for="floatingInputGrid">รหัส นศ Student Code</label>
                                </div>
                                <div class="form-floating mt-1">
                                    <input type="text" class="form-control" id="floatingInputGrid" value=""  name="id_card">
                                    <label for="floatingInputGrid">รหัส ปปช Id Card</label>
                                </div>
                                <div class="form-floating mt-1">
                                    <input type="text" class="form-control" id="floatingInputGrid" value=""  name="program">
                                    <label for="floatingInputGrid">หลักสูตรการศึกษา Program</label>
                                </div>
                                <div class="form-floating mt-1">
                                    <input type="text" class="form-control" id="floatingInputGrid" value=""  name="date_birth">
                                    <label for="floatingInputGrid">ปี/เดือน/วันเกิด Date of birth(example 1999/09/31)</label>
                                </div>
                                <div class="form-floating mt-1">
                                        <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="gender">
                                    <option value="ชาย">ชาย</option>
                                    <option value="หญิง">หญิง</option>
                                    <option value="อื่นๆ">อื่นๆ</option>
                                        </select>
                                    <label label for="floatingSelect">เพศ Gender</label>
                                </div>
                                <div class="form-group mt-2">
                                    <!-- <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br> -->
                                    <input type="submit" name="submit" class="btn btn-primary btn-lg" value="Submit">
                                </div>
                                <!-- <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Register here</a>
                            </div> -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</html>
