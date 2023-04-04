<body oncontextmenu='return false;'>
    <?php include "header.php"; ?>

    <div class="container-fluid">

        <?php
          switch ($_GET['page']) {

          case 'delete':{

              $product_id = $_POST["product_id"];

              $sql     = "DELETE FROM product_kpi WHERE product_id = '" . $product_id . "' ";
              $dbquery = mysqli_query($connection, $sql);

              break;
            }

          case 'new':{

              $today_date = date("d/m/Y", strtotime('now'));
              $today      = date("Y-m-d H:i:s", strtotime('now'));
              $year       = date("Y", strtotime('now'));
              $pecperson  = $_SESSION["pec_code"];

              if (isset($_GET["product"])) {
                $product = $_GET["product"];
              } else {
                $product = "";
              }

              if (isset($_GET["name"])) {
                $name = $_GET["name"];
              } else {
                $name = "";
              }

            ?>

        <div class="row mt-2 ">
            <div class="col-lg-2">
                <input type="hidden" id="product_filter" value="<?php echo $product ?>" />
                <input type="hidden" id="product_filter_name" value="<?php echo $name ?>" />
                <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button>
            </div>
            <div class="col-lg-2">
                <!-- <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button> -->
            </div>
            <div class="col-lg-4">
                <div align="center" style="font-size: 30px;color:blue;">Product KPI</div>
            </div>
            <div class="col-lg-2">
                <!-- <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button> -->
            </div>
            <!-- <div class="col-lg-1">
                <select type="text" class="form-control" id="select_year">
                    <option value='2023' selected>2023</option>
                    <option value='ALL'>All</option>
                </select>
            </div> -->
            <div class="col-lg-2">
                <button type="button" id="refresh" class="btn btn-primary btn-block" onclick="javascript:location.href='product_kpi.php?page=new'">Refresh</button>
                <!-- <button type="button" id="add_button" data-toggle="modal" data-target="#userModal" class="btn btn-success btn-block">Add Data</button> -->
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div align="center" id="product-title" style="font-size: 25px;color:blue;"></div>
            </div>
        </div>

        <div class="row mt-2 justify-content-center">
            <div class="col-lg-2">
                <label for="searchByDevelop">Product Develop:</label>
                <select class="form-control " name="searchByDevelop" id="searchByDevelop">
                    <OPTION VALUE="">Select</OPTION>
                    <?php

                          $sql   = "SELECT * FROM product_kpi WHERE develop <> '' GROUP BY develop ORDER BY develop ASC";
                          $query = mysqli_query($connection, $sql);
                          while ($result = mysqli_fetch_array($query)) {
                          ?>
                    <OPTION VALUE="<?php echo $result['develop']; ?>"><?php echo $result['develop']; ?></OPTION>
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
            <div class="col-lg-1">
                <select class="form-control " name="searchByStaff" id="searchByStaff">
                    <OPTION VALUE="">Staff</OPTION>
                    <?php

                          $sql_code   = "SELECT pec_code FROM pec_person WHERE (department = 'Sales' OR department = 'Application' OR department = 'Technical Support') AND sta_tus <> 'RESIGNED' AND email <> '' ORDER BY pec_code ASC";
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

        .select2-container {
            width: 100% !important;
            padding: 0;
        }

        .select2-selection--single {
            /* height: 50px !important; */
            height: auto !important;
        }

        .select2-selection__rendered {
            word-wrap: break-word !important;
            text-overflow: inherit !important;
            white-space: normal !important;
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
                        <th width="1%">Product</th>
                        <th width="1%">Product Group</th>
                        <th width="1%">Product Code</th>
                        <th width="1%">Team</th>
                        <th width="1%">Leader</th>
                        <th width="1%">App</th>
                        <th width="1%">Staff</th>
                        <th width="1%">Detail Code</th>
                        <th width="1%">Product Detail</th>
                        <th width="1%">Product Model</th>
                        <th width="1%" id="salestarget" class="dark-red"></th>
                        <th width="1%">Customer</th>
                        <th width="1%">PO</th>
                        <th width="1%">Tools</th>
                        <th width="1%">Visit</th>
                        <th width="1%">Quote</th>
                        <th width="1%">Delete</th>
                        <th width="1%">Update By</th>
                        <th width="1%">Update Date</th>
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
                                <div class="col-lg-1 p-0">
                                    <label class="col-lg-12">By</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="update_by" id="update_by" class="form-control" value="<?php echo $pecperson ?> " readonly />
                                    </div>
                                </div>
                                <div class="col-lg-3 p-0">
                                    <label class="col-lg-12">Product Code</label>
                                    <div class="col-lg-12">
                                        <select class="select-2" name="product_code" id="product_code" style="width:100%;" required>

                                            <OPTION VALUE="">Select</OPTION>
                                            <?php
                                              $sql   = "SELECT * FROM product WHERE product_year = '2023' ORDER BY product_code ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($result = mysqli_fetch_array($query)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result['product_code']; ?>"><?php echo $result['product_code'] . " " . $result['product_name']; ?></OPTION>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Product Name</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="product_name" id="product_name" class="form-control" autocomplete="off" readonly>
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Product Develop</label>
                                    <div class="col-lg-12">
                                        <select type="text" class="form-control" name="product_develop" id="product_develop" required>
                                            <option value=''>Select</option>
                                            <option value='KOP'>KOP</option>
                                            <option value='INTERNATIONAL'>International</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Product Detail Code</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="product_detail_code" id="product_detail_code" list="code_list" class="form-control" autocomplete="off" required>
                                        <datalist id="code_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql   = "SELECT * FROM product_kpi WHERE product_detail_code <> '' ORDER BY product_detail_code ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($result = mysqli_fetch_array($query)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result['product_detail_code']; ?>"><?php echo $result['product_detail_code'] . " " . $result['product_detail'] . " " . $result['product_model']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Product Detail</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="product_detail" id="product_detail" list="detail_list" class="form-control" autocomplete="off" required>
                                        <datalist id="detail_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql   = "SELECT * FROM product_kpi WHERE product_detail <> '' ORDER BY product_detail ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($result = mysqli_fetch_array($query)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result['product_detail']; ?>"><?php echo $result['product_detail']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Product Model</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="product_model" id="product_model" list="model_list" class="form-control" autocomplete="off">
                                        <datalist id="model_list">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql   = "SELECT * FROM product_kpi WHERE product_model <> '' ORDER BY product_model ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($result = mysqli_fetch_array($query)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result['product_model']; ?>"><?php echo $result['product_model']; ?></OPTION>
                                            <?php } ?>
                                        </datalist>
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Sales Target (BAHT)</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="sales_target" id="sales_target" class="form-control" autocomplete="off" />
                                    </div>
                                </div>

                            </div>

                            <div class="row">
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
                                    <label class="col-lg-1">Staff</label>
                                    <div class="col-lg-12">
                                        <select class="form-control " name="staff" id="staff">
                                            <OPTION VALUE="">Select</OPTION>
                                            <?php

                                                  $sql_code   = "SELECT * FROM pec_person WHERE (department = 'Sales' OR department = 'Application' OR department = 'Technical Support') AND sta_tus <> 'RESIGNED' AND email <> '' ORDER BY pec_code ASC";
                                                  $query_code = mysqli_query($connection, $sql_code);
                                                  while ($result_code = mysqli_fetch_array($query_code)) {
                                                  ?>
                                            <OPTION VALUE="<?php echo $result_code['pec_code']; ?>"><?php echo $result_code['pec_code']; ?></OPTION>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Customer</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="customer" id="customer" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">PO</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="po" id="po" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Tools</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="tools" id="tools" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Visit</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="visit" id="visit" class="form-control" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Quote</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="quote" id="quote" class="form-control" autocomplete="off" />
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
        var query = {};
        var $element = $('.select-2');

        $element.select2({

            escapeMarkup: function(markup) {
                return markup;
            },
            templateResult: function(result) {
                return result.htmlmatch ? result.htmlmatch : result.text;
            },
            matcher: function(params, data) {
                if ($.trim(params.term) === '') {
                    return data;
                }
                if (typeof data.text === 'undefined') {
                    return null;
                }

                var idx = data.text.toLowerCase().indexOf(params.term.toLowerCase());
                if (idx > -1) {
                    var modifiedData = $.extend({
                        'htmlmatch': data.text.replace(new RegExp("(" + params.term + ")", "gi"), "<b style='background-color:#f2a807;'>$1</b>")
                    }, data, true);

                    return modifiedData;
                }

                return null;
            },

            theme: "classic"
        })
        </script>

        <script type="text/javascript" language="javascript">
        $(document).ready(function() {

            var product_filter = $('#product_filter').val();
            var product_filter_name = $('#product_filter_name').val();

            if (product_filter !== "") {
                $('#product-title').text(product_filter + ' [ ' + product_filter_name + ' ] ');
            }

            $('#product_code').on('change', function(e) {

                var product_code = $('#product_code').val();

                $.ajax({
                    url: "product_code_fetch.php",
                    method: "POST",
                    data: {
                        product_code: product_code
                    },
                    dataType: "json",
                    success: function(data) {

                        $('#product_name').val(data.product_name);

                    }
                })
            });

            $('#add_button').click(function() {

                var product_filter = $('#product_filter').val();

                $('#user_form')[0].reset();
                $('.modal-title').text("Add Data");
                $('#action').val("Add");
                $('#operation').val("Add");
                $('#product_code').val(product_filter).trigger('change');

            });

            var dataTable = $('#user_data').DataTable({
                "processing": true,
                "serverSide": true,
                "deferRender": true,
                "mark": true,
                "pageLength": 1000,
                "order": [],
                "ajax": {
                    url: "product_kpi_fetch.php",
                    type: "POST",
                    data: function(data) {

                        var type = $('#searchByDevelop').val();
                        var product_code = $('#searchByCode').val();
                        var product_name = $('#searchByName').val();
                        var staff = $('#searchByStaff').val();
                        var leader = $('#searchByLeader').val();
                        var app = $('#searchByApp').val();
                        var product = $('#product_filter').val();

                        data.searchByDevelop = type;
                        data.searchByCode = product_code;
                        data.searchByName = product_name;
                        data.searchByStaff = staff;
                        data.searchByLeader = leader;
                        data.searchByApp = app;
                        data.product_filter = product;

                    }
                },

                drawCallback: function() {

                    var sumTarget = $('#user_data').DataTable().column(14).data().sum();
                    $('#salestarget').html('Sales Target (BAHT)' + '<br>' + sumTarget.toLocaleString());

                },

                "columnDefs": [

                    {
                        "targets": [0, 3, 7, 21, 22],
                        "visible": false,
                    },

                    {
                        "targets": [1, 2, 20],
                        "orderable": false,
                    },

                    {
                        className: "center",
                        "targets": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 15, 16, 17, 18, 19, 20, 21, 22]
                    },


                ],

                // "createdRow": function(row, data, dataIndex) {

                //     if (data[3] === "2023") {
                //         $(row).addClass('yellow');
                //     }

                //     if (data[11] !== data[21]) {
                //         $(row).addClass('red');
                //     }

                // },

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

            $('#searchByStaff').change(function() {
                dataTable.draw();
            });

            $('#searchByApp').change(function() {
                dataTable.draw();
            });

            $('#searchByDevelop').change(function() {
                dataTable.draw();
            });

            $("#clear").click(function() {

                $('#searchByCode').val('');
                $('#searchByName').val('');
                $('#searchByLeader').val('');
                $('#searchByStaff').val('');
                $('#searchByDevelop').val('');
                $('#searchByApp').val('');

                dataTable.order.neutral().draw();
                dataTable.search("").draw();
                dataTable.ajax.reload();

            });

            $(document).on('submit', '#user_form', function(event) {
                event.preventDefault();

                $.ajax({
                    url: "product_kpi_insert.php",
                    method: 'POST',
                    data: new FormData(this),
                    contentType: false,
                    processData: false,
                    success: function(data) {
                        alert(data);
                        $('#user_form')[0].reset();
                        $('#userModal').modal('hide');
                        dataTable.ajax.reload();
                        // location.reload();
                    }
                });

            });

            $(document).on('click', '.update', function() {

                var product_id = $(this).attr("id");

                $.ajax({
                    url: "product_kpi_fetch_single.php",
                    method: "POST",
                    data: {
                        product_id: product_id
                    },
                    dataType: "json",
                    success: function(data) {

                        $('#userModal').modal('show');

                        $('#update_date').val(data.update_date);
                        $('#update_by').val(data.update_by);
                        $('#product_code').val(data.product_code).trigger('change');
                        $('#product_name').val(data.product_name);
                        $('#product_develop').val(data.product_develop);
                        $('#product_detail_code').val(data.product_detail_code);
                        $('#product_detail').val(data.product_detail);
                        $('#product_model').val(data.product_model);
                        $('#sales_target').val(data.sales_target);
                        $('#leader').val(data.leader);
                        $('#staff').val(data.staff);
                        $('#app').val(data.app);
                        $('#customer').val(data.customer);
                        $('#po').val(data.po);
                        $('#tools').val(data.tools);
                        $('#visit').val(data.visit);
                        $('#quote').val(data.quote);

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