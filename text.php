<?php include "header.php"; ?>
<body>
    <div class="container-fluid">
        <div class="mt-3 bg-light text-dark shadow-lg rounded">
        <div class="container-fluid">
                <div class="row">
                    <div class="col-2">
                        <p class="badge badge-primary text-wrap m-1 mt-4 p-2">1</p>
                    </div>
                    <div class="col-10">
                        <div class="p-3 d-flex">
                        <p class="m-1 text-muted font-weight-bold">FROM</p>
                        <p class="m-1 p-2 badge badge-primary text-wrap">name</p>
                        <p class="m-1 text-muted font-weight-bold">TO</p>
                        <p class="m-1 p-2 badge badge-primary text-wrap">name</p>
                        <p class="m-1 text-muted font-weight-bold">DEPARTMENT OF</p>
                        <p class="m-1 p-2 badge badge-primary text-wrap">name</p>
                        <p class="m-1 p-2 badge badge-success text-wrap">DATE</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-2">
                        <div class="badge badge-primary text-wrap" style="width: 6rem;"><h5>daily</h5></div> <br>
                        <div style="background-color:#7FC5FF;width: 6rem;" class="m-2 badge text-wrap text-white"><h6>daily</h6></div>
                    </div>
                    <div class="col-8">
                        <div class="">
                            <textarea name="subject_name" id="subject_name" rows="2" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-2">
                    <a type="button" class="m-1 btn btn-danger text-white btn-sm">Remove</button>
                    <a type="button" class="m-1 btn btn-warning text-white btn-sm">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>