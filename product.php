<body oncontextmenu='return false;'>
    <?php include "header.php"; ?>

    <div class="container-fluid">

        <?php
          switch ($_GET['page']) {

          case 'delete':{

              $product_id = $_POST["product_id"];

              $sql     = "DELETE FROM product WHERE product_id = '" . $product_id . "' ";
              $dbquery = mysqli_query($connection, $sql);

              break;
            }

          case 'new':{

              $today_date = date("d/m/Y", strtotime('now'));
              $today      = date("Y-m-d H:i:s", strtotime('now'));
              $year       = date("Y", strtotime('now'));
              $pecperson  = $_SESSION["pec_code"];
              $department = $_SESSION["department"];

              //   $sql_buy    = "SELECT sum(buy_usd) AS buyUSD FROM product WHERE buy_usd <> 0 ";
              //   $query_buy  = mysqli_query($connection, $sql_buy);
              //   $result_buy = mysqli_fetch_assoc($query_buy);
              //   $buyUSD     = $result_buy["buyUSD"];

              //   $sql_sell    = "SELECT sum(sell_baht) AS sellBAHT FROM product WHERE sell_baht <> 0 ";
              //   $query_sell  = mysqli_query($connection, $sql_sell);
              //   $result_sell = mysqli_fetch_assoc($query_sell);
              //   $sellBAHT    = $result_sell["sellBAHT"];

              //   $sql_max    = "SELECT max(source_code) AS maxCode FROM product ";
              //   $query_max  = mysqli_query($connection, $sql_max);
              //   $result_max = mysqli_fetch_assoc($query_max);
              //   $nextCode   = intval($result_max["maxCode"]) + 1;

            ?>

        <div class="row mt-2 ">
            <div class="col-lg-2">
                <input type="hidden" id="department" value="<?php echo $department ?>" />
                <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button>
            </div>
            <div class="col-lg-2">
                <button type="button" class="btn btn-success btn-block" onclick="javascript:location.href='product_kpi.php?page=new'">Product KPI</button>
            </div>
            <div class="col-lg-4">
                <div align="center" style="font-size: 30px;color:blue;">Product List</div>
            </div>
            <div class="col-lg-1">
                <!-- <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button> -->
            </div>
            <div class="col-lg-1">
                <select type="text" class="form-control" id="select_year">
                    <option value='2023' selected>2023</option>
                    <option value='ALL'>All</option>
                </select>
            </div>
            <div class="col-lg-2">
                <button type="button" id="refresh" class="btn btn-primary btn-block" onclick="javascript:location.href='product.php?page=new'">Refresh</button>
                <!-- <button type="button" id="add_button" data-toggle="modal" data-target="#userModal" class="btn btn-success btn-block">Add Data</button> -->
            </div>
        </div>

        <div class="row mt-2 justify-content-center">
            <div class="col-lg-2">
                <label for="searchByType">Product Type:</label>
                <select class="form-control " name="searchByType" id="searchByType">
                    <OPTION VALUE="">Select</OPTION>
                    <?php

                          $sql   = "SELECT * FROM product WHERE product_type <> '' GROUP BY product_type ORDER BY product_type ASC";
                          $query = mysqli_query($connection, $sql);
                          while ($result = mysqli_fetch_array($query)) {
                          ?>
                    <OPTION VALUE="<?php echo $result['product_type']; ?>"><?php echo $result['product_type']; ?></OPTION>
                    <?php } ?>
                </select>
            </div>
            <div class="col-lg-2 form-group">
                <label for="searchByCode">Product Code:</label>
                <input type="text" class="form-control" id="searchByCode">
            </div>
            <div class="col-lg-2 form-group">
                <label for="searchByName">Product Name:</label>
                <input type="text" class="form-control" id="searchByName">
            </div>
        </div>

        <div class="row justify-content-center mb-2">
            <div class="col-lg-1">
                <select class="form-control " name="searchByTeam" id="searchByTeam">
                    <OPTION VALUE="">Team</OPTION>
                    <?php

                          $sql_code   = "SELECT pec_group FROM pec_person WHERE pec_group <> '' GROUP BY pec_group ORDER BY pec_group ASC";
                          $query_code = mysqli_query($connection, $sql_code);
                          while ($result_code = mysqli_fetch_array($query_code)) {
                          ?>
                    <OPTION VALUE="<?php echo $result_code['pec_group']; ?>"><?php echo $result_code['pec_group']; ?></OPTION>
                    <?php } ?>
                </select>
            </div>
            <div class="col-lg-1">
                <select class="form-control " name="searchByLeader" id="searchByLeader">
                    <OPTION VALUE="">Leader</OPTION>
                    <?php

                          $sql_code   = "SELECT pec_code FROM pec_person WHERE (department = 'Sales' OR department = 'Application' OR department = 'Technical Support') AND sta_tus <> 'RESIGNED' AND email <> '' ORDER BY pec_code ASC";
                          $query_code = mysqli_query($connection, $sql_code);
                          while ($result_code = mysqli_fetch_array($query_code)) {
                          ?>
                    <OPTION VALUE="<?php echo $result_code['pec_code']; ?>"><?php echo $result_code['pec_code']; ?></OPTION>
                    <?php } ?>
                </select>
            </div>
            <div class="col-lg-1">
                <select class="form-control " name="searchByApp" id="searchByApp">
                    <OPTION VALUE="">APP</OPTION>
                    <?php

                          $sql_code   = "SELECT pec_code FROM pec_person WHERE (department = 'Application') AND sta_tus <> 'RESIGNED' AND email <> '' ORDER BY pec_code ASC";
                          $query_code = mysqli_query($connection, $sql_code);
                          while ($result_code = mysqli_fetch_array($query_code)) {
                          ?>
                    <OPTION VALUE="<?php echo $result_code['pec_code']; ?>"><?php echo $result_code['pec_code']; ?></OPTION>
                    <?php } ?>
                </select>
            </div>
        </div>

        <div class="row justify-content-center mt-3">

            <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "BDM" || $_SESSION['auth'] == "APP") { ?>

            <div class="col-lg-2">
                <button type="button" id="add_button" data-toggle="modal" data-target="#userModal" class="btn btn-success btn-block">Add Data</button>
            </div>

            <?php } ?>

            <div class="col-lg-2">
                <button type="button" id="clear" class="btn btn-secondary btn-block">Clear All Search</button>
            </div>

        </div>

        <style>
        td.wrapno {
            white-space: nowrap;
        }

        @media (min-width: 768px) {
            .modal-lg {
                width: 90%;
                max-width: 1350px;
            }
        }

        .center {
            text-align: center;
        }

        .right {
            text-align: right;
        }

        th {
            background-color: #cfe2f3;
            text-align: center;
        }

        table.table-bordered {
            border: 1px solid grey !important;
            margin-top: 10px;
        }

        table.table-bordered>thead>tr>th {
            border: 1px solid grey !important;
        }

        table.table-bordered>tbody>tr>td {
            border: 1px solid grey !important;
        }

        body {
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            font-family: 'Quicksand', sans-serif;
        }

        .box {
            width: 1300px;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 10px;
            box-sizing: border-box;
        }

        th {
            /* background: white; */
            position: sticky !important;
            top: 60;
            /* box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4); */
        }

        label {
            /* width:180px;
            clear:left;
            text-align:right; */
            color: blue;
            margin-bottom: 1px;
            margin-top: 5px;
        }

        .bootstrap-select .dropdown-menu {
            width: 100%;
        }

        .bootstrap-select .dropdown-menu li small {
            white-space: normal;
        }

        .btn-green {
            background-color: rgb(102, 255, 102, 0.3);
            color: black;
        }

        .btn-green_deep {
            background-color: rgb(0, 153, 76, 0.3);
            color: black;
        }

        .btn-blue {
            background-color: rgb(0, 128, 255, 0.3);
            color: black;
        }

        .btn-yellow {
            background-color: rgb(255, 255, 102, 0.3);
            color: black;
        }

        .btn-brown {
            background-color: rgb(153, 102, 51, 0.3);
            color: black;
        }

        .btn-red {
            background-color: rgb(255, 0, 0, 0.3);
            color: black;
        }

        .yellow {
            background-color: rgb(255, 255, 102, 0.2) !important;
        }

        .red {
            background-color: rgb(255, 0, 0, 0.3) !important;
        }

        .dark-red {
            color: rgb(204, 0, 0, 1) !important;
        }

        .blue {
            background-color: rgb(0, 128, 255, 0.3) !important;
        }

        .green {
            background-color: rgb(102, 255, 102, 0.3) !important;
        }

        .green_deep {
            background-color: rgb(0, 153, 76, 0.3) !important;
        }

        .brown {
            background-color: rgb(153, 102, 51, 0.3) !important;
        }

        .bootstrap-select .dropdown-menu {
            width: 100%;
        }

        .bootstrap-select .dropdown-menu li small {
            white-space: normal;
        }
        </style>

        <body>

            <table id="user_data" class="table table-bordered table-striped nowrap">
                <thead>
                    <tr>
                        <th width="1%">ID</th>
                        <th width="1%">Edit</th>
                        <th width="1%">Item</th>
                        <th width="1%">Year</th>
                        <th width="1%">Product Name</th>
                        <th width="1%">Product Type</th>
                        <th width="1%">Product Code</th>
                        <th width="1%">Team</th>
                        <th width="1%">Leader</th>
                        <th width="1%">App</th>
                        <th width="1%" id="buyusd" class="dark-red"></th>
                        <th width="1%" id="sellbaht" class="dark-red"></th>
                        <th width="1%">PW</th>
                        <th width="1%">ES</th>
                        <th width="1%">CG</th>
                        <th width="1%">FI</th>
                        <th width="1%">MS</th>
                        <th width="1%">AP</th>
                        <th width="1%">SR</th>
                        <th width="1%">TS</th>
                        <th width="1%">VP</th>
                        <th width="1%">Total</th>
                        <th width="1%">Delete</th>
                        <th width="1%">Update By</th>
                        <th width="1%">Update Date</th>
                        <th width="1%">Grade</th>
                        <th width="1%">Polar</th>
                    </tr>
                </thead>
            </table>
        </body>

        <div id="userModal" class="modal fade">
            <div class="modal-dialog modal-lg">
                <form method="post" id="user_form" class="form-horizontal" enctype="multipart/form-data">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">New Item</h4>
                        </div>

                        <div class="modal-body">

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Date</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="update_date" id="update_date" class="form-control" value="<?php echo $today_date ?> " readonly />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Input By</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="update_by" id="update_by" class="form-control" value="<?php echo $pecperson ?> " readonly />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Product Year</label>
                                    <div class="col-lg-12">
                                        <!-- <input type="text" name="product_year" id="product_year" class="form-control" /> -->
                                        <select type="text" class="form-control" name="product_year" id="product_year" required>
                                            <option value=''>Select Year</option>
                                            <option value='2023'>2023</option>
                                            <option value='2022'>2022</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Product Code</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="product_code" id="product_code" list="product_list" class="form-control" autocomplete="off" required>
                                        <datalist id="product_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql   = "SELECT * FROM product WHERE product_code <> '' ORDER BY product_code ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($result = mysqli_fetch_array($query)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result['product_code']; ?>"><?php echo $result['product_year'] . " " . $result['product_code'] . " " . $result['product_name']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Product Name</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="product_name" id="product_name" list="name_list" class="form-control" autocomplete="off" required>
                                        <datalist id="name_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql   = "SELECT * FROM product WHERE product_name <> '' ORDER BY product_name ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($result = mysqli_fetch_array($query)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result['product_name']; ?>"><?php echo $result['product_year'] . " " . $result['product_code'] . " " . $result['product_name']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Product Type</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="product_type" id="product_type" list="type_list" class="form-control" autocomplete="off" required>
                                        <datalist id="type_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql   = "SELECT * FROM product WHERE product_type <> '' GROUP BY product_type ORDER BY product_type ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($result = mysqli_fetch_array($query)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result['product_type']; ?>"><?php echo $result['product_type']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Buying Target (USD)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="buy_usd" id="buy_usd" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Selling Target (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_baht" id="sell_baht" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-1">Team</label>
                                    <div class="col-lg-12">
                                        <select class="form-control " name="team" id="team">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql_code   = "SELECT pec_group FROM pec_person WHERE pec_group <> '' GROUP BY pec_group ORDER BY pec_group ASC";
                                                  $query_code = mysqli_query($connection, $sql_code);
                                                  while ($result_code = mysqli_fetch_array($query_code)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result_code['pec_group']; ?>"><?php echo $result_code['pec_group']; ?></OPTION>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-1">Leader</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="leader" id="leader" list="leader_list" class="form-control" autocomplete="off">
                                        <datalist id="leader_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql_code   = "SELECT pec_code FROM pec_person WHERE (department = 'Sales' OR department = 'Application' OR department = 'Technical Support') AND sta_tus <> 'RESIGNED' AND email <> '' ORDER BY pec_code ASC";
                                                  $query_code = mysqli_query($connection, $sql_code);
                                                  while ($result_code = mysqli_fetch_array($query_code)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result_code['pec_code']; ?>"><?php echo $result_code['pec_code']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>

                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-1">Application</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="app" id="app" list="app_list" class="form-control" autocomplete="off">
                                        <datalist id="app_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql_code   = "SELECT pec_code FROM pec_person WHERE (department = 'Application') AND sta_tus <> 'RESIGNED' AND email <> '' ORDER BY pec_code ASC";
                                                  $query_code = mysqli_query($connection, $sql_code);
                                                  while ($result_code = mysqli_fetch_array($query_code)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result_code['pec_code']; ?>"><?php echo $result_code['pec_code']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>

                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Product Grade</label>
                                    <div class="col-lg-12">
                                        <select type="text" class="form-control" id="product_grade" name="product_grade">
                                            <option value=''>Select Grade</option>
                                            <option value='A'>A</option>
                                            <option value='B'>B</option>
                                            <option value='C'>C</option>
                                            <option value='D'>D</option>
                                            <option value='E'>E</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Product Polar</label>
                                    <div class="col-lg-12">
                                        <select type="text" class="form-control" id="product_polar" name="product_polar">
                                            <option value=''>Select Polar</option>
                                            <option value='+'>+</option>
                                            <option value='++'>++</option>
                                            <option value='+++'>+++</option>
                                            <option value='++++'>++++</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">PW (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_PW" id="sell_PW" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">ES (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_ES" id="sell_ES" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">CG (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_CG" id="sell_CG" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">FI (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_FI" id="sell_FI" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">MS (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_MS" id="sell_MS" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">AP (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_AP" id="sell_AP" class="form-control" autocomplete="off" />
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">SR (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_SR" id="sell_SR" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">TS (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_TS" id="sell_TS" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">VP (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sell_VP" id="sell_VP" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="hidden" name="product_id" id="product_id" />
                                <input type="hidden" name="operation" id="operation" />
                                <input type="submit" name="action" id="action" class="btn btn-success" value="Add" />
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- <script type="text/javascript" language="javascript">
        $('.datepicker').datepicker({
            clearBtn: true,
            format: "dd/mm/yyyy",
            todayHighlight: true
        });
        </script>

        <script type="text/javascript" language="javascript">
        $('#test_start').timepicker({
            'timeFormat': 'H:i'
        });
        $('#test_stop').timepicker({
            'timeFormat': 'H:i'
        });
        </script> -->

        <!-- <script>
        $('.selectpicker.select-all').on('change', function() {
            var selectPicker = $(this);
            var selectAllOption = selectPicker.find('option.select-all');
            var checkedAll = selectAllOption.prop('selected');
            var optionValues = selectPicker.find('option[value!="[all]"][data-divider!="true"]');

            if (checkedAll) {
                // Process 'all/none' checking
                var allChecked = selectAllOption.data("all") || false;

                if (!allChecked) {
                    optionValues.prop('selected', true).parent().selectpicker('refresh');
                    selectAllOption.data("all", true);
                } else {
                    optionValues.prop('selected', false).parent().selectpicker('refresh');
                    selectAllOption.data("all", false);
                }

                selectAllOption.prop('selected', false).parent().selectpicker('refresh');
            } else {
                // Clicked another item, determine if all selected
                var allSelected = optionValues.filter(":selected").length == optionValues.length;
                selectAllOption.data("all", allSelected);
            }
        }).trigger('change');
        </script> -->

        <!-- <script type="text/javascript">
        window.onbeforeunload = function() {

            localStorage.setItem("searchByCode", JSON.stringify($('#searchByCode').val()));
            localStorage.setItem("searchByName", JSON.stringify($('#searchByName').val()));
            localStorage.setItem("searchByGroup", JSON.stringify($('#searchByGroup').val()));
            localStorage.setItem("searchBySales", JSON.stringify($('#searchBySales').val()));
            localStorage.setItem("searchByGrade", JSON.stringify($('#searchByGrade').val()));
            localStorage.setItem("searchByPolar", JSON.stringify($('#searchByPolar').val()));

        }

        window.onload = function() {

            var searchByCode = JSON.parse(localStorage.getItem("searchByCode"));
            var searchByName = JSON.parse(localStorage.getItem("searchByName"));
            var searchByGroup = JSON.parse(localStorage.getItem("searchByGroup"));
            var searchBySales = JSON.parse(localStorage.getItem("searchBySales"));
            var searchByGrade = JSON.parse(localStorage.getItem("searchByGrade"));
            var searchByPolar = JSON.parse(localStorage.getItem("searchByPolar"));

            if (searchByCode !== null) $('#searchByCode').val(searchByCode);
            if (searchByName !== null) $('#searchByName').val(searchByName);
            if (searchByGroup !== null) $('#searchByGroup').val(searchByGroup);
            if (searchBySales !== null) $('#searchBySales').val(searchBySales);
            if (searchByGrade !== null) $('#searchByGrade').val(searchByGrade);
            if (searchByPolar !== null) $('#searchByPolar').val(searchByPolar);

        }
        </script> -->

        <script type="text/javascript" language="javascript">
        $(document).ready(function() {

            var department = $('#department').val();

            if (department == "Application") {
                $('#select_year').val("ALL");
            } else {
                $('#select_year').val("2023");
            }

            $('#add_button').click(function() {
                $('#user_form')[0].reset();
                $('.selectpicker').selectpicker('val', '-1');
                $('.modal-title').text("Add Data");
                $('#action').val("Add");
                $('#operation').val("Add");
                // $('#sell_baht').prop("readonly", false);
            });

            var dataTable = $('#user_data').DataTable({
                "processing": true,
                "serverSide": true,
                "deferRender": true,
                "mark": true,
                "pageLength": 1000,
                "order": [],
                "ajax": {
                    url: "product_fetch.php",
                    type: "POST",
                    data: function(data) {

                        var type = $('#searchByType').val();
                        var product_code = $('#searchByCode').val();
                        var product_name = $('#searchByName').val();
                        var team = $('#searchByTeam').val();
                        var leader = $('#searchByLeader').val();
                        var app = $('#searchByApp').val();
                        var year = $('#select_year').val();

                        data.searchByType = type;
                        data.searchByCode = product_code;
                        data.searchByName = product_name;
                        data.searchByTeam = team;
                        data.searchByLeader = leader;
                        data.searchByApp = app;
                        data.selectYear = year;
                    }
                },

                drawCallback: function() {

                    var sumUSD = $('#user_data').DataTable().column(10).data().sum();
                    $('#buyusd').html('Buy Target (USD)' + '<br>' + sumUSD.toLocaleString());

                    var sumBAHT = $('#user_data').DataTable().column(11).data().sum();
                    $('#sellbaht').html('Sell Target (BAHT)' + '<br>' + sumBAHT.toLocaleString());

                },

                "columnDefs": [

                    {
                        "targets": [0, 23, 24, 25, 26],
                        "visible": false,
                    },

                    {
                        "targets": [1, 2, 22],
                        "orderable": false,
                    },
                    {
                        className: "center",
                        "targets": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 15]
                    },
                    {
                        className: "right",
                        "targets": [12, 13, 16, 17, 18, 19, 20, 21]
                    }
                ],

                "createdRow": function(row, data, dataIndex) {

                    if (data[3] === "2023") {
                        $(row).addClass('yellow');
                    }

                    if (data[11] !== data[21]) {
                        $(row).addClass('red');
                    }

                },

            });

            $('#searchByCode').keyup(function() {
                dataTable.draw();
            });

            $('#searchByName').keyup(function() {
                dataTable.draw();
            });

            $('#searchByLeader').change(function() {
                dataTable.draw();
            });

            $('#searchByTeam').change(function() {
                dataTable.draw();
            });

            $('#searchByApp').change(function() {
                dataTable.draw();
            });

            $('#searchByType').change(function() {
                dataTable.draw();
            });

            $('#select_year').change(function() {
                dataTable.draw();
            });

            $("#clear").click(function() {

                $('#searchByCode').val('');
                $('#searchByName').val('');
                $('#searchByLeader').val('');
                $('#searchByTeam').val('');
                $('#searchByType').val('');
                $('#searchByApp').val('');
                $('#select_year').val('2023');
                dataTable.order.neutral().draw();
                dataTable.search("").draw();
                dataTable.ajax.reload();

            });

            $(document).on('submit', '#user_form', function(event) {
                event.preventDefault();

                $.ajax({
                    url: "product_insert.php",
                    method: 'POST',
                    data: new FormData(this),
                    contentType: false,
                    processData: false,
                    success: function(data) {
                        alert(data);
                        $('#user_form')[0].reset();
                        $('#userModal').modal('hide');
                        $('.selectpicker').selectpicker('val', '-1');
                        dataTable.ajax.reload();
                        // location.reload();
                    }
                });

            });

            $(document).on('click', '.update', function() {

                var product_id = $(this).attr("id");
                // $('#sell_baht').prop("readonly", true);

                $.ajax({
                    url: "product_fetch_single.php",
                    method: "POST",
                    data: {
                        product_id: product_id
                    },
                    dataType: "json",
                    success: function(data) {

                        $('.selectpicker').selectpicker('val', '-1');
                        $('#userModal').modal('show');

                        $('#update_date').val(data.update_date);
                        $('#update_by').val(data.update_by);
                        $('#product_grade').val(data.product_grade);
                        $('#product_polar').val(data.product_polar);
                        $('#product_type').val(data.product_type);
                        $('#leader').val(data.leader);
                        $('#team').val(data.team);
                        $('#app').val(data.app);
                        $('#product_code').val(data.product_code);
                        $('#product_name').val(data.product_name);
                        $('#buy_usd').val(data.buy_usd);
                        $('#sell_baht').val(data.sell_baht);
                        $('#product_year').val(data.product_year);
                        $('#sell_PW').val(data.sell_PW);
                        $('#sell_ES').val(data.sell_ES);
                        $('#sell_CG').val(data.sell_CG);
                        $('#sell_FI').val(data.sell_FI);
                        $('#sell_MS').val(data.sell_MS);
                        $('#sell_AP').val(data.sell_AP);
                        $('#sell_SR').val(data.sell_SR);
                        $('#sell_TS').val(data.sell_TS);
                        $('#sell_VP').val(data.sell_VP);

                        $('.modal-title').text("Edit Data");
                        $('#product_id').val(product_id);
                        $('#action').val("Save");
                        $('#operation').val("Edit");
                    }
                })
            });

            $(document).on('click', '.delete', function() {

                var product_id = $(this).attr("id");

                if (confirm("Are you sure you want to delete this item?")) {
                    $.ajax({
                        url: "?page=delete",
                        method: "POST",
                        data: {

                            product_id: product_id
                        },
                        success: function(data) {
                            dataTable.ajax.reload();
                        }
                    });

                } else {

                    return false;

                }
            });

        });
        </script>

        <?php

              break;
            } /* END Case New */

          } // END Switch Case

        ?>

    </div> <!-- END Div Container-Fluid -->

    <?php include "footer.php"; ?>
</body>