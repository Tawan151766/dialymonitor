<body oncontextmenu='return false;'>
    <?php include "header.php"; ?>

    <div class="container-fluid">

        <?php
          switch ($_GET['page']) {

          case 'delete':{

              $sql     = "DELETE FROM dailymonitor WHERE subject_id = '" . $_POST['subject_id'] . "'";
              $dbquery = mysqli_query($connection, $sql);

              break;
            }

          case 'new':{

              $today_date    = date("d/m/Y H:i:s", strtotime('now'));
              $pecperson     = $_SESSION['pec_code'];
              $pecdepartment = $_SESSION['department'];

            ?>

        <div class="row mt-2">
            <div class="col-lg-2">
                <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button>
            </div>
            <div class="col-lg-2">
                <!-- <button type="button" class="btn btn-warning btn-block" onclick="history.back();">Back to Previous</button> -->
            </div>
            <div class="col-lg-4">
                <div align="center" id="title" style="font-size: 30px;color:blue;">Daily Monitoring</div>
            </div>
            <div class="col-lg-2">
                <!-- <button type="button" class="btn btn-success btn-block" onclick="javascript:location.href='#'">Import Data from EXCEL</button> -->
            </div>
            <div class="col-lg-2">
                <button type="button" class="btn btn-primary btn-block" onclick="javascript:location.href='dailymonitor.php?page=new'">Refresh</button>
            </div>
        </div>

        <div class="row mt-2 justify-content-center">
            <div class="col-lg-2 form-group">
                <label for="usr">Subject:</label>
                <input type="text" class="form-control" id="searchBySub">
            </div>
            <div class="col-lg-2 form-group">
                <label for="usr">IO Number:</label>
                <input type="text" class="form-control" id="searchByIO">
            </div>
            <div class="col-lg-2 form-group">
                <label for="usr">PO Number:</label>
                <input type="text" class="form-control" id="searchByPO">
            </div>
            <div class="col-lg-2 form-group">
                <label for="usr">Company Name:</label>
                <input type="text" class="form-control" id="searchByName">
            </div>
        </div>

        <div class="row mt-2 justify-content-center">
            <div class="col-lg-2">
                <select class="form-control" id='searchByType'>
                    <option value="">Select Category</option>
                    <option value="Main Customer And New Customer">Main Customer And New Customer</option>
                    <option value="Meet Overall Target 45M/Q">Meet Overall Target 45M/Q</option>
                    <option value="Meet KOP Target 45M/Q">Meet KOP Target 45M/Q</option>
                    <option value="Meet 450QN/3APP/Q">Meet 450QN/3APP/Q</option>
                    <option value="Communication Problem">Communication Problem</option>
                    <option value="IO Not Available">IO Not Available</option>
                    <option value="IO Mistake">IO Mistake</option>
                    <option value="Customer Satisfaction">Customer Satisfaction</option>
                    <option value="Delivery Late Sales">Delivery Late (Sales)</option>
                    <option value="Delivery Late Service">Delivery Late (Service)</option>
                    <option value="Delivery Problem">Delivery Problem</option>
                    <option value="Car Checking">Car Checking</option>
                    <option value="Car Problem">Car Problem</option>
                    <option value="QC and SV Pass Test">QC and SV Pass Test</option>
                    <option value="Customer Complaint">Customer Complaint</option>
                    <option value="Cash Flow Problem">Cash Flow Problem</option>
                    <option value="Financial Statement">Financial Statement</option>
                    <option value="BD Monitoring All Target">BD Monitoring All Target</option>
                    <option value="BD Meet Target Plan 90%">BD Meet Target Plan 90%</option>
                    <option value="Activity Participation">Activity Participation</option>
                    <option value="Creativity">Creativity</option>
                    <option value="Useful Report/Enquiry">Useful Report/Enquiry</option>
                    <option value="Recommendation">Recommendation/Suggestion</option>
                    <option value="Special Work">Special Work</option>
                    <option value="Company Development">Company Development</option>
                    <option value="Accident">Accident</option>
                    <option value="Stock Problems">Stock Problems</option>
                    <option value="PO Problems Local">PO Problems Local</option>
                    <option value="PO Problems Overseas">PO Problems Overseas</option>
                    <option value="Quotation Mistake">Quotation Mistake</option>
                    <option value="Payment Delay">Payment Delay</option>
                </select>
            </div>
            <div class="col-lg-2">
                <button type="reset" id="clear" class="btn btn-secondary btn-block">Clear Search</button>
            </div>
            <div class="col-lg-2">
                <button type="button" id="add_button" data-toggle="modal" data-target="#userModal" class="btn btn-success btn-block">Add Data</button>
            </div>
        </div>

        <style>
        td.wrapno {
            white-space: nowrap;
        }

        @media (min-width: 768px) {
            .modal-lg {
                width: 95%;
                max-width: 1450px;
            }
        }

        .center {
            text-align: center;
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

        .btn-green {
            background-color: rgb(0, 204, 102, 0.5);
            color: black;
        }

        .btn-green:hover {
            background-color: rgb(0, 204, 102, 1);
            color: white;
        }

        .btn-blue {
            background-color: rgb(0, 0, 255, 0.3);
            color: black;
        }

        .btn-blue:hover {
            background-color: rgb(0, 0, 255, 1);
            color: white;
        }

        .btn-orange {
            background-color: rgb(255, 153, 51, 0.5);
            color: black;
        }

        #delete_doc {
            background-color: rgb(255, 153, 51, 0.5);

        }

        .btn-orange:hover {
            background-color: rgb(255, 153, 51, 1);
            color: white;
        }

        .bootstrap-select .dropdown-menu {
            width: 100%;
        }

        .bootstrap-select .dropdown-menu li small {
            white-space: normal;
            /* white-space: nowrap; */
        }
        </style>

        <body>

            <table id="user_data" class="table table-bordered table-striped nowrap">
                <thead>
                    <tr>
                        <th width="1%">Id</th>
                        <th width="1%">Edit</th>
                        <th width="1%">Date</th>
                        <th width="1%">Subject</th>
                        <th width="1%">Attached</th>
                        <th width="1%">Input By</th>
                        <th width="1%">Category 1</th>
                        <th width="1%">Category 2</th>
                        <th width="1%">Responsible Person</th>
                        <th width="1%">Responsible Department</th>
                        <th width="1%">Action By</th>
                        <th width="1%">Status</th>
                        <th width="1%">Remark</th>
                        <th width="1%">Solutions</th>
                        <th width="1%">IO</th>
                        <th width="1%">Quotation</th>
                        <th width="1%">PO</th>
                        <th width="1%">Company Name</th>
                        <th width="1%">Description</th>
                        <th width="1%">Delete</th>
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
                            <h4 class="modal-title">New Subject</h4>
                        </div>

                        <div class="modal-body">

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Date</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="subject_date" id="subject_date" class="form-control" value="<?php echo $today_date ?>" readonly />
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Input By</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="subject_by" id="subject_by" class="form-control" value="<?php echo $pecperson ?>" readonly />
                                    </div>
                                </div>
                                <div class="col-lg-3 p-0">
                                    <label class="col-lg-12">Main Category</label>
                                    <div class="col-lg-12">
                                        <select class="form-control" name="category1" id="category1">
                                            <option value="">Select</option>
                                            <option value="Main Customer And New Customer">Main Customer And New Customer</option>
                                            <option value="Meet Overall Target 45M/Q">Meet Overall Target 45M/Q</option>
                                            <option value="Meet KOP Target 45M/Q">Meet KOP Target 45M/Q</option>
                                            <option value="Meet 450QN/3APP/Q">Meet 450QN/3APP/Q</option>
                                            <option value="Communication Problem">Communication Problem</option>
                                            <option value="IO Not Available">IO Not Available</option>
                                            <option value="IO Mistake">IO Mistake</option>
                                            <option value="Customer Satisfaction">Customer Satisfaction</option>
                                            <option value="Delivery Late Sales">Delivery Late (Sales)</option>
                                            <option value="Delivery Late Service">Delivery Late (Service)</option>
                                            <option value="Delivery Problem">Delivery Problem</option>
                                            <option value="Car Checking">Car Checking</option>
                                            <option value="Car Problem">Car Problem</option>
                                            <option value="QC and SV Pass Test">QC and SV Pass Test</option>
                                            <option value="Customer Complaint">Customer Complaint</option>
                                            <option value="Cash Flow Problem">Cash Flow Problem</option>
                                            <option value="Financial Statement">Financial Statement</option>
                                            <option value="BD Monitoring All Target">BD Monitoring All Target</option>
                                            <option value="BD Meet Target Plan 90%">BD Meet Target Plan 90%</option>
                                            <option value="Activity Participation">Activity Participation</option>
                                            <option value="Creativity">Creativity</option>
                                            <option value="Useful Report/Enquiry">Useful Report/Enquiry</option>
                                            <option value="Recommendation">Recommendation/Suggestion</option>
                                            <option value="Special Work">Special Work</option>
                                            <option value="Company Development">Company Development</option>
                                            <option value="Accident">Accident</option>
                                            <option value="Stock Problems">Stock Problems</option>
                                            <option value="PO Problems Local">PO Problems Local</option>
                                            <option value="PO Problems Overseas">PO Problems Overseas</option>
                                            <option value="Quotation Mistake">Quotation Mistake</option>
                                            <option value="Payment Delay">Payment Delay</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-3 p-0">
                                    <label class="col-lg-12">Sub Category</label>
                                    <div class="col-lg-12">
                                        <select class="form-control" name="category2" id="category2">
                                            <option value="">Select</option>
                                            <option value="Pictures+Report">Pictures+Report</option>
                                            <option value="Enquiry">Enquiry</option>
                                            <option value="Not In Time">Not In Time</option>
                                            <option value="Data Not Complete">Data Not Complete</option>
                                            <option value="Wrong Information">Wrong Information</option>
                                            <option value="Car Problem">Car Problem</option>
                                            <option value="Document Mistake">Document Mistake</option>
                                            <option value="Item Mistake">Item Mistake</option>
                                            <option value="Document Missing">Document Missing</option>
                                            <option value="Item Missing">Item Missing</option>
                                            <option value="Alignment Problem">Alignment Problem</option>
                                            <option value="Motor Power Problem">Motor Power Problem</option>
                                            <option value="Painting Problem">Painting Problem</option>
                                            <option value="Surface Not Smooth">Surface Not Smooth</option>
                                            <option value="Bearing Problem">Bearing Problem</option>
                                            <option value="Performance Problem">Performance Problem</option>
                                            <option value="Leakage Problem">Leakage Problem</option>
                                            <option value="Vibration Problem">Vibration Problem</option>
                                            <option value="Noise Problem">Noise Problem</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Status</label>
                                    <div class="col-lg-12">
                                        <select class="form-control" name="subject_status" id="subject_status">
                                            <option value="">Select</option>
                                            <option value="IN PROCESS">IN PROCESS</option>
                                            <option value="COMPLETE">COMPLETE</option>
                                            <option value="PENDING">PENDING</option>
                                            <option value="CANCEL">CANCEL</option>
                                        </select>
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                            <div class="row">
                                <div class="col-lg-12 p-0">
                                    <label class="col-lg-12">Subject</label>
                                    <div class="col-lg-12">
                                        <textarea name="subject_name" id="subject_name" rows="2" class="form-control"></textarea>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Responsible Person</label>
                                    <div class="col-lg-12">
                                        <select class="form-control selectpicker select-all" data-style="btn-green" name="response_person[]" id="response_person" data-size="10" data-live-search="false" data-title="Person" data-width="100%" data-dropup-auto="false" multiple>
                                            <option value="[all]" class="select-all">All Items</option>
                                            <option value="" data-divider="true"></option>
                                            <?php

                                                  $sql0   = "SELECT * FROM pec_person WHERE department <> '' GROUP BY department ORDER BY department ASC";
                                                  $query0 = mysqli_query($connection, $sql0);
                                                  while ($result0 = mysqli_fetch_array($query0)) {

                                                    $department = $result0["department"];
                                                  ?>

                                            <optgroup label="<?php echo $department; ?>">

                                                <?php

                                                        $sql   = "SELECT * FROM pec_person WHERE department = '" . $department . "' AND sta_tus <> 'RESIGNED' AND email <> 'X' AND email <> '' AND position <> 'Director' ORDER BY pec_code ASC";
                                                        $query = mysqli_query($connection, $sql);
                                                        while ($result = mysqli_fetch_array($query)) {
                                                        ?>

                                                <OPTION VALUE="<?php echo $result['pec_code']; ?>"><?php echo $result['pec_code']; ?></OPTION>

                                                <?php } ?>

                                                </opgroup>

                                                <?php } ?>
                                        </SELECT>
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Responsible Department</label>
                                    <div class="col-lg-12">
                                        <select class="form-control selectpicker select-all" data-style="btn-green" name="response_department[]" id="response_department" data-size="10" data-live-search="false" data-title="Department" data-width="100%" data-dropup-auto="false" multiple>
                                            <option value="[all]" class="select-all">All Items</option>
                                            <option value="" data-divider="true"></option>
                                            <?php

                                                  $sql   = "SELECT * FROM pec_person WHERE department <> '' GROUP BY department ORDER BY department ASC";
                                                  $query = mysqli_query($connection, $sql);
                                                  while ($person = mysqli_fetch_array($query)) {
                                                  ?>
                                            <option value="<?php echo $person['department']; ?>"><?php echo $person['department']; ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Action Person</label>
                                    <div class="col-lg-12">
                                        <select class="form-control selectpicker select-all" data-style="btn-green" name="action_person[]" id="action_person" data-size="10" data-live-search="false" data-title="Department" data-width="100%" data-dropup-auto="false" multiple>
                                            <option value="[all]" class="select-all">All Items</option>
                                            <option value="" data-divider="true"></option>
                                            <?php

                                                  $sql0   = "SELECT * FROM pec_person WHERE department <> '' GROUP BY department ORDER BY department ASC";
                                                  $query0 = mysqli_query($connection, $sql0);
                                                  while ($result0 = mysqli_fetch_array($query0)) {

                                                    $department = $result0["department"];
                                                  ?>

                                            <optgroup label="<?php echo $department; ?>">

                                                <?php

                                                        $sql   = "SELECT * FROM pec_person WHERE department = '" . $department . "' AND sta_tus <> 'RESIGNED' AND email <> 'X' AND email <> '' AND position <> 'Director' ORDER BY pec_code ASC";
                                                        $query = mysqli_query($connection, $sql);
                                                        while ($result = mysqli_fetch_array($query)) {
                                                        ?>

                                                <OPTION VALUE="<?php echo $result['pec_code']; ?>"><?php echo $result['pec_code']; ?></OPTION>

                                                <?php } ?>

                                                </opgroup>

                                                <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                            <div class="row">
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Document</label>
                                    <div class="col-lg-12 ">
                                        <input type="text" name="pdf_attached" id="pdf_attached" class="form-control" readonly />
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Upload PDF or JPG File</label>
                                    <div class="col-lg-12 ">
                                        <input type="file" name="attached" id="attached" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-lg-4 p-0">
                                    <label class="col-lg-12">Delete Document</label>
                                    <div class="col-lg-12 ">
                                        <input type="text" name="delete_doc" id="delete_doc" class="form-control" />
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                            <div class="row">
                                <div class="col-lg-6 p-0">
                                    <label class="col-lg-12">Remarks</label>
                                    <div class="col-lg-12">
                                        <textarea name="remarks" id="remarks" rows="2" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-6 p-0">
                                    <label class="col-lg-12">Solutions</label>
                                    <div class="col-lg-12">
                                        <textarea name="solutions" id="solutions" rows="2" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                            <div class="row">
                                <div class="col-lg-6 p-0">
                                    <label class="col-lg-12">Select IO</label>
                                    <div class="col-lg-12">
                                        <select class="form-control selectpicker" data-style="btn-blue" name="io_number" id="io_number" data-size="8" data-live-search="true" data-width="100%" data-dropup-auto="false" data-virtual-scroll="false">
                                            <option value="">Select</option>
                                            <?php

                                                  $sql1   = "SELECT * FROM io_report WHERE io_number <> 16 UNION ALL SELECT * FROM io_report_sv UNION ALL SELECT * FROM io_report_wr ORDER BY io_year DESC, io_number DESC ";
                                                  $query1 = mysqli_query($connection, $sql1);
                                                  while ($result1 = mysqli_fetch_array($query1)) {
                                                  ?>
                                            <option value="<?php echo $result1['io_no']; ?>"><?php echo $result1['io_no'] . " " . $result1['customer'] . " " . $result1["des_cription"]; ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 p-0">
                                    <label class="col-lg-12">Select PO</label>
                                    <div class="col-lg-12">
                                        <select class="form-control selectpicker" data-style="btn-blue" name="po_number" id="po_number" data-size="8" data-live-search="true" data-width="100%" data-dropup-auto="false" data-virtual-scroll="false">
                                            <option value="">Select</option>
                                            <?php

                                                  $sql2   = "SELECT * FROM po_report ORDER BY po_year DESC, po_number DESC ";
                                                  $query2 = mysqli_query($connection, $sql2);
                                                  while ($result2 = mysqli_fetch_array($query2)) {
                                                  ?>
                                            <option value="<?php echo $result2['po_number']; ?>"><?php echo $result2['po_number'] . " " . $result2['supplier_name'] . " " . $result2['des_cription']; ?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                            <div class="row">
                                <div class="col-lg-2 p-0">
                                    <label class="col-lg-12">Company Code</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="company_code" id="company_code" class="form-control" readonly />
                                    </div>
                                </div>
                                <div class="col-lg-10 p-0">
                                    <label class="col-lg-12">Company Name</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="company_name" id="company_name" class="form-control" readonly />
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                            <div class="row">
                                <div class="col-lg-12 p-0">
                                    <label class="col-lg-12">Company Address</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="company_address" id="company_address" class="form-control" readonly />
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                            <div class="row">
                                <div class="col-lg-12 p-0">
                                    <label class="col-lg-12">Description</label>
                                    <div class="col-lg-12">
                                        <input type="text" name="des_cription" id="des_cription" class="form-control" readonly />
                                    </div>
                                </div>
                            </div> <!-- END Row -->

                        </div> <!-- END Div Modal Body -->

                        <div class="modal-footer">
                            <input type="hidden" name="subject_id" id="subject_id" />
                            <input type="hidden" name="operation" id="operation" />
                            <input type="submit" name="action" id="action" class="btn btn-success" value="Add" />
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                </form>
            </div>
        </div>

        <script>
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
        </script>


        <script type="text/javascript" language="javascript">
        $('.datepicker').datepicker({
            clearBtn: true,
            format: "dd/mm/yyyy",
            todayHighlight: true
        });
        </script>

        <script type="text/javascript" language="javascript">
        $(document).ready(function() {

            $('#add_button').click(function() {

                $('#user_form')[0].reset();
                $('.selectpicker').selectpicker('val', '-1');
                $('.modal-title').text("Add Data");
                $('#action').val("Add");
                $('#operation').val("Add");

            });

            var dataTable = $('#user_data').DataTable({

                initComplete: function() {

                    var api = this.api();

                    $("#searchByType").change(function() {

                        var myCondition = $(this).children("option:selected").val();
                        if (myCondition == "Customer Complaint") {

                            api.column(10).visible(false);
                            api.column(9).visible(false);
                            api.column(16).visible(false);
                            api.column(17).visible(false);

                        } else {

                            api.column(14).visible(false);

                        }
                    });
                },

                "processing": true,
                "serverSide": true,
                "deferRender": true,
                "mark": true,
                "pageLength": 500,
                "order": [],
                "ajax": {
                    url: "dailymonitor_fetch.php",
                    type: "POST",
                    data: function(data) {
                        //   Read values
                        var io_number = $('#searchByIO').val();
                        var company_name = $('#searchByName').val();
                        var subject_name = $('#searchBySub').val();
                        var po_number = $('#searchByPO').val();
                        var q_number = $('#searchByQ').val();
                        var cat_type = $('#searchByType').val();

                        //   Append to data
                        data.searchByIO = io_number;
                        data.searchByName = company_name;
                        data.searchBySub = subject_name;
                        data.searchByPO = po_number;
                        data.searchByQ = q_number;
                        data.searchByType = cat_type;
                    }
                },

                "columnDefs": [

                    {
                        "targets": [0, 15],
                        "visible": false,
                    },
                    {
                        "targets": [0, 1, 19],
                        "orderable": false,
                    },
                    {
                        className: "center",
                        "targets": [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 19]
                    }

                ]

            });

            $('#searchByIO').keyup(function() {
                dataTable.draw();
            });

            $('#searchByName').keyup(function() {
                dataTable.draw();
            });

            $('#searchBySub').keyup(function() {
                dataTable.draw();
            });

            $('#searchByPO').keyup(function() {
                dataTable.draw();
            });

            $('#searchByType').change(function() {

                var type = $('#searchByType').val();
                if (type == "Customer Complaint") {
                    $('#title').text("Customer Complaint (FM-SA-01-04)");
                } else {
                    $('#title').text("Daily Monitoring");
                }
                dataTable.draw();
            });

            $("#clear").click(function() {

                $('#searchBySub').val('');
                $('#searchByIO').val('');
                $('#searchByName').val('');
                $('#searchByPO').val('');
                $('#searchByType').val('');
                dataTable.order.neutral().draw();
                dataTable.search("").draw();
                dataTable.ajax.reload();

            });

            $(document).on('submit', '#user_form', function(event) {
                event.preventDefault();

                $.ajax({
                    url: "dailymonitor_insert.php",
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
                    }
                });

            });

            $(document).on('click', '.update', function() {

                var subject_id = $(this).attr("id");

                $.ajax({
                    url: "dailymonitor_fetch_single.php",
                    method: "POST",
                    data: {
                        subject_id: subject_id
                    },
                    dataType: "json",
                    success: function(data) {

                        $('.selectpicker').selectpicker('val', '-1');
                        $('#userModal').modal('show');

                        $('#subject_date').val(data.subject_date);
                        $('#subject_name').val(data.subject_name);
                        $('#subject_by').val(data.subject_by);
                        $('#subject_department').val(data.subject_department);
                        $('#category1').val(data.category1);
                        $('#category2').val(data.category2);

                        var action_person = data.action_person.split(',');
                        $('#action_person').selectpicker('val', action_person);

                        var response_person = data.response_person.split(',');
                        $('#response_person').selectpicker('val', response_person);

                        var response_department = data.response_department.split(',');
                        $('#response_department').selectpicker('val', response_department);

                        $('#subject_status').val(data.subject_status);
                        $('#io_number').selectpicker('val', data.io_number);
                        $('#po_number').selectpicker('val', data.po_number);
                        $('#company_code').val(data.company_code);
                        $('#company_name').val(data.company_name);
                        $('#company_address').val(data.company_address);
                        $('#des_cription').val(data.des_cription);
                        $('#solutions').val(data.solutions);
                        $('#remarks').val(data.remarks);
                        $('#pdf_attached').val(data.pdf_attached);

                        $('.modal-title').text("Edit Subject");
                        $('#subject_id').val(subject_id);
                        $('#action').val("Save");
                        $('#operation').val("Edit");
                    }
                })
            });

            $(document).on('click', '.delete', function() {

                var subject_id = $(this).attr("id");

                if (confirm("Are you sure you want to delete this item?")) {
                    $.ajax({
                        url: "?page=delete",
                        method: "POST",
                        data: {

                            subject_id: subject_id
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