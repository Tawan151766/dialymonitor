<?php include "header.php"; ?>
<body>

<div class="row m-2">
            <div class="col-lg-2">
                <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button>
            </div>
            <div class="col-lg-2">
                <!-- <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button> -->
            </div>
            <div class="col-lg-4">
                <div align="center" id="title" style="font-size: 30px;color:blue;">Category Management</div>
            </div>
            <div class="col-lg-2">
                <!-- <button type="button" class="btn btn-success btn-block" onclick="javascript:location.href='#'">Import Data from EXCEL</button> -->
            </div>
            <div class="col-lg-2">
                <button type="button" class="btn btn-primary btn-block" onclick="javascript:location.href='manage_cate.php?page=new'">Refresh</button>
            </div>
</div>
    <div class="container-fluid mt-3">
    <p class="h1">Create Main Category</p>
    <form class="d-flex"  action="insert_category1.php" method="post">
    <input class="shadow-lg m-1 form-control form-control-sm border border-primary" type="text" placeholder="Create Main Category" aria-label=".form-control-sm example" name="categoryname">
    <button type="submit" class="shadow-lg m-1 btn btn-primary btn-sm">Create</button>
</form>
<form action="insert_category2.php" method="post">
<div class="d-flex mt-3">
<p class="h1 mt-2">Create Sub Category</p>
<?php
    $sql_select = "SELECT * FROM `category1`";
    $result_select = $connection->query($sql_select);
    ?>
<select style="width:30%;" class="shadow-lg custom-select mt-4 m-2 bg-primary text-light" name="category1_id">
  <option selected>Select Category</option>
  <?php
     while($row_select = mysqli_fetch_array($result_select)){ ?>
        <option value="<?php echo $row_select['category1_id'] ?>"><?php echo $row_select['category1_name'] ?></option>
        
    <?php } ?>
</select>
</div>
<div class="d-flex justify-content-start">
<input class="shadow-lg m-1 form-control form-control-sm border border-primary" type="text" placeholder="Create Sub Category" aria-label=".form-control-sm example" name="categoryname">
    <button type="submit" class="shadow-lg m-1 btn btn-primary btn-sm">Create</button>
</div>
    
</form>
    </div>
    <div class="container-fluid mt-3">
        <div class="row">
            <div class="col">
            <div style="width:50%;" class="shadow-lg bg-primary text-light p-0 text-center m-3 rounded  text-primary border border-primary">
  <h3>Main Category</h3>
</div>
            
            </div>
            <div class="col">
            <?php
    $sql_select = "SELECT * FROM `category1`";
    $result_select = $connection->query($sql_select);
    ?>
<select style="width:30%;"  class="custom-select custom-select-lg mt-3  border border-primary  text-primary shadow-lg" id="category1">
  <option selected>Sub Category</option>
  <?php
     while($row_select = mysqli_fetch_array($result_select)){ ?>
        <option value="<?php echo $row_select['category1_id'] ?>"><?php echo $row_select['category1_name'] ?></option>
        
    <?php } ?>
</select>
        </div>
    
    </div>
    
<div class="container-fluid mt-3">
    <div class="row">
    <div class="col">
        <table class="table shadow-lg border rounded">
            <thead class="table-primary">
                <th>#</th>
                <th scope="col">Name</th>
                <th scope="col">Remove</th>
            </thead>
  <?php
    $i = 1;
    $sql = "SELECT * FROM `category1`";
    $result = $connection->query($sql);
    ?>
    <tbody>
    <?php
     while($row = mysqli_fetch_array($result)){ ?>
        <tr>
            <td> <?php echo $i++ ?></td>
            <td ><a href="" class="" role="button" aria-pressed="true" data-toggle="modal" data-target="#exampleModal<?php echo $row['category1_id'] ?>"><?php echo $row['category1_name'] ?></a></td>
            <td><a href="delect_category1.php?id=<?php echo $row['category1_id'] ?>" class="btn-sm btn-danger btn-lg active" role="button" aria-pressed="true" >Remove</a></td>
        </tr>
        <!-- Modal -->
<div class="modal fade" id="exampleModal<?php echo $row['category1_id'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <form action="update_category1.php" method="post">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update MainCategory</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="input-group mb-3">
        <div class="d-flex container-fluid mb-1">
        <span class="input-group" id="inputGroup-sizing-default" >Category ID</span>
        <span class="input-group" id="inputGroup-sizing-default" >Category Name</span></div>
  <div class="input-group-prepend">
    
    <input name="categoryid" value="<?php echo $row['category1_id'] ?>" type="text" class="input-group-text" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" readonly>
  </div>
  <input name="categoryname" value="<?php echo $row['category1_name'] ?>" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </form>
</div>
    <?php } ?></td>
</tbody>
</table></div>
<div class="col"><table class="table shadow-lg border rounded">
  <thead class="table-primary">
  <th>#</th>
                <th scope="col">Name</th>
                <th scope="col">Remove</th>
  </thead>
  <tbody id="category2">
  </tbody>
</table>
</div>
</div>
</div>

<!-- Modal -->

<?php
$sqlcate2 = "SELECT * FROM `category2`";
$resultcate2 = $connection->query($sqlcate2);
     while($rowcate2 = mysqli_fetch_array($resultcate2)){ ?>
<div class="modal fade" id="exampleModals<?php echo $rowcate2['category2_id'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <form action="update_category2.php" method="post">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update SubCategory</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="input-group mb-3">
        <div class="d-flex container-fluid mb-1">
        <span class="input-group" id="inputGroup-sizing-default" >Category ID</span>
        <span class="input-group" id="inputGroup-sizing-default" >Category Name</span></div>
  <div class="input-group-prepend">
    
    <input name="categoryid" value="<?php echo $rowcate2['category2_id'] ?>" type="text" class="input-group-text" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" readonly>
  </div>
  <input name="categoryname" value="<?php echo $rowcate2['category2_name'] ?>" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
  </form>
</div>
<?php } ?>

<script type="text/javascript">
  $('#category1').change(function() {
    var category1_id = $(this).val();
 
      $.ajax({
      type: "POST",
      url: "category_ajax.php",
      data: {id:category1_id,function:'category1'},
      success: function(data){
          $('#category2').html(data); 
      }
    });
  });
</script>
</body>
