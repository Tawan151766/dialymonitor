<?php include "header.php";

  $localHost = "../project-1/"; // Local
  $webHost1  = "../pec.ts2337.com/"; // FastComet
  $webHost2  = ""; // Cloudways

  $_SESSION['hostPath'] = $localHost;
  //   $_SESSION['hostPath'] = $webHost1;

  //   $_SESSION['hostPath'] = $webHost2;

  $thisYear   = date("Y", strtotime("this year"));
  $thisY      = INTVAL($thisYear);
  $thisMonth  = date("m", strtotime("this month"));
  $today      = date("Y-m-d H:i:s", strtotime("now"));
  $monthToday = INTVAL($thisMonth);

  if ($monthToday <= 3) {
    $thisQ   = 3;
    $quarter = 1;
  } else if ($monthToday <= 6) {
    $thisQ   = 6;
    $quarter = 2;
  } else if ($monthToday <= 9) {
    $thisQ   = 9;
    $quarter = 3;
  } else {
    $thisQ   = 12;
    $quarter = 4;
  }

?>
<script>
localStorage.clear();
</script>

<body style="background:#DCDCDC" oncontextmenu='return false;'>

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-4 col-sm-4 col-4">
                <div class="text_ryan">PEC SYSTEM</div>
            </div>
        </div>

        <?php if ($_SESSION['auth'] == "MASTER" && $_SESSION['position'] == "Director") { ?>

        <div class="row justify-content-center">
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button round glossy btn-block" onclick="location.href='manage_pec_person.php';"><span class="fa fa-address-book-o"></span> PEC Person</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='sales_quarter_cron.php?page=all';"><span class="fa fa-address-book-o"></span> Sales Quarter</button>
            </div>
            <!-- <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue serif round glass btn-block" onclick="location.href='sales_analysis_margin.php?page=ALL&year=<?php echo $thisY ?>&quarter=12';"><span class="fa fa-bar-chart "></span> Sales Profit</button>
            </div> -->
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button round glossy btn-block" onclick="location.href='Xmatch_q_io.php';">Check IO-Q</button>
                <!-- <button type="button" class="button round glossy btn-block" onclick="location.href='Xmatch_io_monitor.php';">Check IO Monitor</button> -->
            </div>
        </div>
        <?php } ?>

        <div class="row justify-content-center">
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button round glossy btn-block" onclick="window.open('https://docs.google.com/spreadsheets/d/1vG1A7uSE4Bz-X3IvjJsuuEfP1s61A9esI7bo2ziI6zQ/edit#gid=773432263')">Yearly Plan 2022</button>
            </div>
        </div>

        <div class="row justify-content-center">
            <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "ACC" || $_SESSION['auth'] == "DIR") { ?>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue serif round glass btn-block" onclick="location.href='cash.php?page=new';"><span class="fa fa-bar-chart "></span> Cash Forecast</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue serif round glass btn-block" onclick="location.href='budget.php?page=new&year=&code=';"><span class="fa fa-bar-chart "></span> Budget</button>
            </div>
            <?php } ?>
            <?php if ($_SESSION['auth'] == "DIR" || ($_SESSION['auth'] == "MASTER" && $_SESSION['position'] == "Director")) { ?>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue serif round glass btn-block" onclick="location.href='sales_analysis_margin.php?page=ALL&year=<?php echo $thisY ?>&quarter=12';"><span class="fa fa-bar-chart "></span> Sales Profit</button>
            </div>
            <?php } ?>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button round glossy btn-block" onclick="window.open('https://docs.google.com/spreadsheets/d/1eKUjbXlsD26KtkC7zOqlbOYg_zA7CWFBizz2pPAj5G8/edit#gid=1128545928')">Man-Day Service 2022</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button round glossy btn-block" onclick="window.open('https://docs.google.com/spreadsheets/d/14j8OLyKU5_eIY0MrOINrq-jHSUUdHPhGSnmb0IhFsBw/edit#gid=1776225583')">PEC Form 2022</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button round glossy btn-block" onclick="window.open('https://docs.google.com/spreadsheets/d/1AHG1cvbcTEQxBQzeaSYt_BtgfUG4Xt36eAdJVzZDXQ4/edit#gid=2091595393')">Application Plan 2022</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button round glossy btn-block" onclick="window.open('https://docs.google.com/spreadsheets/d/1ooy251iIVXXocZY3ac2h8rSslMAAGY9auG9_4tSGuRQ/edit#gid=1019013922')">Application Plan 2021</button>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <!-- <button type="button" class="button blue round glass btn-block" onclick="location.href='zendesk.php?page=new';"><span class="fa fa-comments icon"></span> Zendesk</button>
             -->
                <button type="button" class="button blue round glass btn-block" onclick="location.href='daily_monitor_supplier.php?page=new';"><span class="fa fa-comments icon"></span> Meeting Plan</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='seminar_list.php?page=new';"><span class="far fa-file-alt icon"></span> Seminar</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='survey.php?page=new';"><span class="far fa-file-alt icon"></span> Product Survey</button>
                <!-- <button type="button" class="button blue round glass btn-block" onclick="location.href='Xtest_import_msteam.php?page=';"><span class="far fa-file-alt icon"></span> Import MS Team</button> -->
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='pump_list.php?page=new';"><span class="far fa-file-alt icon"></span> Pump Set</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='product.php?page=new';"><span class="far fa-file-alt icon"></span> Product List</button>
            </div>
            <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "APP" || $_SESSION['auth'] == "DIR") { ?>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='kop_sn.php?page=new';"><span class="fa fa-cogs "></span> KOP S/N</button>
            </div>
            <?php } ?>
        </div>

        <div class="row justify-content-center ">
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='sales_forecast_graph.php';"><span class="fa fa-line-chart "></span> Sales Order</button>
            </div>
            <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "APP" || $_SESSION['auth'] == "DIR" || $_SESSION['auth'] == "BDM") { ?>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='sales_forecast_new.php?page=ALL&pec_group=All&sales=';"><span class="fa fa-line-chart icon"></span> Sales Forecast</button>
            </div>
            <?php } else if ($_SESSION['dep_code'] == "Sales" || $_SESSION['dep_code'] == "TS") { ?>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='sales_forecast_new.php?page=GROUP&pec_group=<?php echo $_SESSION['pec_group'] ?>&sales=<?php echo $_SESSION['pec_code'] ?>';"><span class="fa fa-line-chart"></span> Sales Forecast</button>
            </div>
            <?php } else { ?>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='#';"><span class="fa fa-line-chart icon"></span> Sales Forecast</button>
            </div>
            <?php } ?>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <!-- <button type="button" class="button blue round glass btn-block" onclick="location.href='sales_analysis.php?page=ALL&quarter=<?php echo $thisQ ?>';"><span class="fa fa-bar-chart icon"></span> Sales Analysis</button> -->
                <button type="button" class="button blue round glass btn-block" onclick="location.href='sales_analysis_new.php?page=ALL&year=<?php echo $thisYear ?>&quarter=<?php echo $quarter ?>';"><span class="fa fa-bar-chart icon"></span> Sales Analysis</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button pink round glossy btn-block" onclick="location.href='customer_visit.php?page=new';"><span class="fa fa-address-book-o"></span> Customer Visit</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button green round glossy btn-block" onclick="location.href='kop_analysis_all_acc.php?page=ALL&year=&analysis=Accumulate';"><span class="fa fa-bar-chart"></span> KOP Analysis</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button orange round glossy btn-block" onclick="location.href='stock_new.php?page=new';"><span class="fa fa-cart-arrow-down"></span> Stock</button>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='q_report_sales.php';"><span class="fa fa-file-text"></span> Quotation Report</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='io_report.php?page=new';"><span class="fa fa-file-text"></span> IO Report</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-3 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='sales_quarter.php?page=ALL&quarter=<?php echo $thisQ ?>';"><span class="fa fa-file-text"></span> Quarter Report</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <!-- <button type="button" class="button pink round glossy btn-block" onclick="location.href='weekly_report.php';"><span class="fa fa-line-chart "></span> Weekly Report</button> -->

                <button type="button" class="button pink round glossy btn-block" onclick="location.href='customer_activity_graph.php?page=ALL&year=<?php echo $thisYear ?>&quarter=<?php echo $quarter ?>';"><span class="fa fa-line-chart "></span> Weekly Report</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button green round glossy btn-block" onclick="location.href='document.php?page=new';"><span class="far fa-file-alt icon"></span> Document</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button orange round glossy btn-block" onclick="location.href='tools_new.php';"><span class="fa fa-gavel"></span> Tools</button>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='logistics_analysis.php?page=new';"><span class="fa fa-clock-o"></span> IO Late</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glass btn-block" onclick="location.href='io_monitor.php?page=new';"><span class="fa fa-chalkboard-teacher"></span> IO Monitoring</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button blue round glossy btn-block" onclick="location.href='dailymonitor.php?page=new';"><span class="fa fa-pencil-alt"></span> Daily Monitoring</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button pink round glossy btn-block" onclick="location.href='customer_satisfy.php?page=new';"><span class="fa fa-heart"></span> Satisfaction</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button green round glossy btn-block" onclick="location.href='KOP_Part_Main.php?page=';"><span class="fa fa-cogs "></span> KOP Parts</button>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-4 p-1">
                <button type="button" class="button orange round glossy btn-block" onclick="location.href='consumable.php?page=list';"><span class="fa fa-shopping-basket"></span> Consumable</button>
            </div>
        </div>

    </div> <!-- END Div Container Flid -->

    <div class="row">
        <div class="container mt-1 ">

            <div class="d-flex flex-row justify-content-center">
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
                <div class="btn_circle9 mr-5" onclick="location.href='supplier_list.php?page=new';">Supplier</div>
                <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "APP" || $_SESSION['auth'] == "BDM" || $_SESSION['department'] == "Sales" || $_SESSION['auth'] == "ACC") { ?>
                <div class="btn_circle8" onclick="location.href='customer_list.php?page=new';">Customer</div>
                <?php } else { ?>
                <div class="btn_circle8">Customer</div>
                <?php } ?>
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
            </div>

            <div class="d-flex flex-row justify-content-center">
                <div class="btn_circle"></div>
                <div class="btn_circle1">Transport</div>
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
                <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "APP" || $_SESSION['auth'] == "ADM" || $_SESSION['pec_code'] == "PD" || $_SESSION['pec_code'] == "AB" || $_SESSION['pec_code'] == "TSU" || $_SESSION['pec_code'] == "ST") { ?>
                <div class="btn_circle2" onclick="location.href='q_report.php?page=new';">Quotation</div>
                <?php } else { ?>
                <div class="btn_circle2">Quotation</div>
                <?php } ?>
                <div class="btn_circle"></div>
            </div>

            <div class="d-flex flex-row justify-content-center mt-1">
                <div class="btn_circle1">Services</div>
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
                <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "APP" || $_SESSION['auth'] == "LGT" || $_SESSION['auth'] == "PUR" || $_SESSION['auth'] == "ADM") { ?>
                <div class="btn_circle3" onclick="location.href='io_report.php?page=new';">IO</div>
                <?php } else { ?>
                <div class="btn_circle3">IO</div>
                <?php } ?>
            </div>

            <div class="d-flex flex-row justify-content-center">
                <div class="btn_circle"></div>

                <div class="btn_circle11" onclick="location.href='inventory.php?page=new';">Store</div>

                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
                <?php if ($_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "APP" || $_SESSION['auth'] == "LGT" || $_SESSION['auth'] == "ADM" || $_SESSION['auth'] == "PUR" || $_SESSION['auth'] == "BDM" || $_SESSION['pec_code'] == "PD" || $_SESSION['auth'] == "ACC") { ?>
                <div class="btn_circle5" onclick="location.href='po_report.php?page=new';">Supplier PO</div>
                <?php } else { ?>
                <div class="btn_circle5">Supplier PO</div>
                <?php } ?>
                <div class="btn_circle"></div>
            </div>

            <div class="d-flex flex-row justify-content-center">
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
                <div class="btn_circle10 mr-5" onclick="location.href='qc_test.php?page=new';">Quality</div>
                <?php if ($_SESSION['auth'] == "DIR" || $_SESSION['auth'] == "ACC" || $_SESSION['auth'] == "MASTER" || $_SESSION['auth'] == "APP" || $_SESSION['auth'] == "LGT" || $_SESSION['auth'] == "SALES") { ?>
                <!-- <div class="btn_circle6" onclick="location.href='logistics.php?page=';">Logistics</div> -->
                <div class="btn_circle6" onclick="location.href='logis_update.php';">Logistics</div>
                <?php } else { ?>
                <div class="btn_circle6">Logistics</div>
                <?php } ?>
                <div class="btn_circle"></div>
                <div class="btn_circle"></div>
            </div>

        </div> <!-- END Container -->
    </div> <!-- END Class Row -->

</body>

<style>
/* -------------- THE button -------------- */
.button {

    /* text */
    text-decoration: none;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    font-weight: 300;
    text-shadow: rgba(255, 255, 255, .5) 0 1px 0;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;

    /* layout */
    /* padding: .5em .6em .4em .6em; */
    padding: .7em .6em .7em .6em;
    margin: .2em;
    display: inline-block;
    position: relative;

    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    border-radius: 8px;

    /* effects */
    border-top: 1px solid rgba(255, 255, 255, 0.8);
    border-bottom: 1px solid rgba(0, 0, 0, 0.1);

    /* background-image: -webkit-gradient(radial, 50% 0, 100, 50% 0, 0, from(rgba(255, 255, 255, 0)), to(rgba(255, 255, 255, 0.7))), url(http://iwantaneff.in/t/http://iwantaneff.in/t/noise.png);
    background-image: -moz-radial-gradient(top, ellipse cover, rgba(255, 255, 255, 0.7) 0%, rgba(255, 255, 255, 0) 100%), url(http://iwantaneff.in/t/http://iwantaneff.in/t/noise.png);
    background-image: gradient(radial, 50% 0, 100, 50% 0, 0, from(rgba(255, 255, 255, 0)), to(rgba(255, 255, 255, 0.7))), url(http://iwantaneff.in/t/http://iwantaneff.in/t/noise.png); */

    -webkit-transition: background .2s ease-in-out;
    -moz-transition: background .2s ease-in-out;
    transition: background .2s ease-in-out;

    /* color */
    color: hsl(0, 0%, 40%) !important;
    background-color: hsl(0, 0%, 75%);

    -webkit-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(0, 0%, 60%) 0 .1em 3px, hsl(0, 0%, 45%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    -moz-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(0, 0%, 60%) 0 .1em 3px, hsl(0, 0%, 45%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(0, 0%, 60%) 0 .1em 3px, hsl(0, 0%, 45%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
}

/* -------------- button (tag) -------------- */

button.button {
    border-left: none;
    border-right: none;
}

button.button:hover {
    cursor: pointer;
}

/* -------------- icon -------------- */
.button:before {
    font: 1.2em/0 'Pictos', sans-serif;
    content: attr(data-icon);
    /* gets the icon value from the custom data attribute and puts it infront of the button label */
    margin-right: 0.4em;
}

/* icon only */
.icon {
    font-weight: normal;
    font-style: normal;
    text-indent: -999em;
}

.icon:before {
    margin-right: 0;
    display: block;
    height: 0;
    text-indent: 0px;
}



/* -------------- colours -------------- */

.button.orange {
    color: hsl(39, 100%, 30%) !important;
    background-color: hsl(39, 100%, 50%);

    -webkit-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(39, 100%, 40%) 0 .1em 3px, hsl(39, 100%, 30%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    -moz-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(39, 100%, 40%) 0 .1em 3px, hsl(39, 100%, 30%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(39, 100%, 40%) 0 .1em 3px, hsl(39, 100%, 30%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
}

.button.orange:hover {
    background-color: hsl(39, 100%, 65%);
}


.button.blue {
    color: hsl(208, 50%, 40%) !important;
    background-color: hsl(208, 100%, 75%);

    -webkit-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(208, 50%, 55%) 0 .1em 3px, hsl(208, 50%, 40%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    -moz-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(208, 50%, 55%) 0 .1em 3px, hsl(208, 50%, 40%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(208, 50%, 55%) 0 .1em 3px, hsl(208, 50%, 40%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
}

.button.blue:hover {
    background-color: hsl(208, 100%, 83%);
}

.button.green {
    color: hsl(88, 70%, 30%) !important;
    background-color: hsl(88, 70%, 60%);
    -webkit-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(88, 70%, 40%) 0 .1em 3px, hsl(88, 70%, 30%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    -moz-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(88, 70%, 40%) 0 .1em 3px, hsl(88, 70%, 30%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(88, 70%, 40%) 0 .1em 3px, hsl(88, 70%, 30%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
}

.button.green:hover {
    background-color: hsl(88, 70%, 75%);
}

.button.pink {
    color: hsl(340, 100%, 30%) !important;
    background-color: hsl(340, 100%, 75%);
    -webkit-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(340, 70%, 50%) 0 .1em 3px, hsl(340, 80%, 40%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    -moz-box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(340, 70%, 50%) 0 .1em 3px, hsl(340, 80%, 40%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
    box-shadow: inset rgba(255, 254, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.15) 0 -0.1em .3em,
        /* inner shadow */
        hsl(340, 70%, 50%) 0 .1em 3px, hsl(340, 80%, 40%) 0 .3em 1px,
        /* color border */
        rgba(0, 0, 0, 0.2) 0 .5em 5px;
    /* drop shadow */
}

.button.pink:hover {
    background-color: hsl(340, 100%, 83%);
}



.button.transparent {
    color: rgba(0, 0, 0, 0.5) !important;
}

.button.transparent,
.button.transparent:hover,
.button.transparent:active {
    background-color: transparent;
    background-image: none;
}

.button.transparent:hover {
    opacity: .9;
}

/* -------------- States -------------- */

.button:hover {
    background-color: hsl(0, 0%, 83%);
}

.button:active {
    /* background-image: -webkit-gradient(radial, 50% 0, 100, 50% 0, 0, from(rgba(255, 255, 255, 0)), to(rgba(255, 255, 255, 0))), url(http://iwantaneff.in/t/noise.png);
    background-image: -moz-gradient(radial, 50% 0, 100, 50% 0, 0, from(rgba(255, 255, 255, 0)), to(rgba(255, 255, 255, 0))), url(http://iwantaneff.in/t/noise.png);
    background-image: gradient(radial, 50% 0, 100, 50% 0, 0, from(rgba(255, 255, 255, 0)), to(rgba(255, 255, 255, 0))), url(http://iwantaneff.in/t/noise.png); */

    -webkit-box-shadow: inset rgba(255, 255, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.2) 0 -0.1em .3em,
        /* inner shadow */
        rgba(0, 0, 0, 0.4) 0 .1em 1px,
        /* border */
        rgba(0, 0, 0, 0.2) 0 .2em 6px;
    /* drop shadow */
    -moz-box-shadow: inset rgba(255, 255, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.2) 0 -0.1em .3em,
        /* inner shadow */
        rgba(0, 0, 0, 0.4) 0 .1em 1px,
        /* border */
        rgba(0, 0, 0, 0.2) 0 .2em 6px;
    /* drop shadow */
    box-shadow: inset rgba(255, 255, 255, 0.6) 0 0.3em .3em, inset rgba(0, 0, 0, 0.2) 0 -0.1em .3em,
        /* inner shadow */
        rgba(0, 0, 0, 0.4) 0 .1em 1px,
        /* border */
        rgba(0, 0, 0, 0.2) 0 .2em 6px;
    /* drop shadow */

    -webkit-transform: translateY(.2em);
    -moz-transform: translateY(.2em);
    transform: translateY(.2em);
}

.button:focus {
    outline: none;
    color: rgba(254, 255, 255, 0.9) !important;
    text-shadow: rgba(0, 0, 0, 0.2) 0 1px 2px;
}

.button[disabled],
.button[disabled]:hover,
.button.disabled,
.button.disabled:hover {
    opacity: .5;
    cursor: default;
    color: rgba(0, 0, 0, 0.2) !important;
    text-shadow: none !important;
    background-color: rgba(0, 0, 0, 0.05);
    background-image: none;
    border-top: none;

    -webkit-box-shadow: inset rgba(255, 254, 255, 0.4) 0 0.3em .3em, inset rgba(0, 0, 0, 0.1) 0 -0.1em .3em,
        /* inner shadow */
        rgba(0, 0, 0, 0.3) 0 .1em 1px,
        /* border */
        rgba(0, 0, 0, 0.2) 0 .2em 6px;
    /* drop shadow */
    -moz-box-shadow: inset rgba(255, 254, 255, 0.4) 0 0.3em .3em, inset rgba(0, 0, 0, 0.1) 0 -0.1em .3em,
        /* inner shadow */
        rgba(0, 0, 0, 0.3) 0 .1em 1px,
        /* border */
        rgba(0, 0, 0, 0.2) 0 .2em 6px;
    /* drop shadow */
    box-shadow: inset rgba(255, 254, 255, 0.4) 0 0.3em .3em, inset rgba(0, 0, 0, 0.1) 0 -0.1em .3em,
        /* inner shadow */
        rgba(0, 0, 0, 0.3) 0 .1em 1px,
        /* border */
        rgba(0, 0, 0, 0.2) 0 .2em 6px;
    /* drop shadow */

    -webkit-transform: translateY(5px);
    -moz-transform: translateY(5px);
    transform: translateY(5px);
}

/* -------------- Fonts -------------- */

.serif {
    font-family: 'Lobster', serif;
    font-weight: normal;
}


/* -------------- Sizes -------------- */

.xs {
    font-size: 16px;
}

.xl {
    font-size: 32px;
}


/* -------------- Materials -------------- */

.button.glossy:after,
.button.glass:after {
    content: "";
    position: absolute;
    width: 90%;
    height: 60%;
    top: 10%;
    left: 5%;

    -webkit-border-radius: .5em .5em 1em 1em / .5em .5em 2em 2em;
    -moz-border-radius: .5em .5em 1em 1em / .5em .5em 2em 2em;
    border-radius: .5em .5em 1em 1em / .5em .5em 2em 2em;

    background-image: -webkit-gradient(linear, 0% 0, 100% 0, from(rgba(255, 255, 255, .55)), to(rgba(255, 255, 255, .5)),
            color-stop(.5, rgba(255, 255, 255, 0)), color-stop(.8, rgba(255, 255, 255, 0)));
    background-image: -moz-linear-gradient(left, rgba(255, 255, 255, .55), rgba(255, 255, 255, 0) 50%, rgba(255, 255, 255, 0) 80%, rgba(255, 255, 255, .5));
    background-image: gradient(linear, 0% 0, 100% 0, from(rgba(255, 255, 255, .55)), to(rgba(255, 255, 255, .5)),
            color-stop(.5, rgba(255, 255, 255, 0)), color-stop(.8, rgba(255, 255, 255, 0)));
}

.button.glossy:active:after,
.button.glass:active:after,
.button.disabled:after,
.button[disabled]:after {
    opacity: .6;
}

.button.icon.glossy:after,
.button.icon.glass:after {
    height: 75%;
}

/* -------------- Glass + Transparent -------------- */
.button.glass {
    text-shadow: rgba(255, 255, 255, .5) 0 -1px 0, rgba(0, 0, 0, 0.18) 0 .18em .15em;
}

.button.glass:active {
    text-shadow: rgba(255, 255, 255, .3) 0 1px 0, rgba(0, 0, 0, 0.15) 0 .18em .15em;
}


/* -------------- Shapes -------------- */

/* round */
.round,
.round.glossy:after,
.round.glass:after {
    border-top: none;
    -webkit-border-radius: 1em;
    -moz-border-radius: 1em;
    border-radius: 1em;
}

/* oval */
.oval {
    border-top: none;
    padding-left: .8em;
    padding-right: .8em;
    -webkit-border-radius: 5em / 2em;
    -moz-border-radius: 5em / 2em;
    border-radius: 5em / 2em;
}

.oval.glossy:after,
.oval.glass:after {
    top: 5%;
    -webkit-border-radius: 5em / 2em 2em 1em 1em;
    -moz-border-radius: 5em / 2em 2em 1em 1em;
    border-radius: 5em / 2em 2em 1em 1em;
}

.oval.icon {
    padding-left: .8em;
    padding-right: .8em;
    -webkit-border-radius: 1.5em / 1em;
    -moz-border-radius: 1.5em / 1em;
    border-radius: 1.5em / 1em;
}

.oval.icon.glossy:after,
.oval.icon.glass:after {
    -webkit-border-radius: 1.5em / 1em;
    -moz-border-radius: 1.5em / 1em;
    border-radius: 1.5em / 1em;
}

/* brackets */
.brackets,
.brackets.glossy:after,
.brackets.glass:after {
    border-top: none;
    -webkit-border-radius: .5em / 1em;
    -moz-border-radius: .5em / 1em;
    border-radius: .5em / 1em;
}

/* skew */
.skew {
    border-top: none;
    padding-right: 1.2em;
    padding-left: 0.8em;
    -webkit-border-radius: 5em 1em / 5em 1em;
    -moz-border-radius: 5em 1em / 5em 1em;
    border-radius: 5em 1em / 5em 1em;
}

.skew.glossy:after,
.skew.glass:after {
    left: 10%;
    -webkit-border-radius: 7em 1em / 5em 1em;
    -moz-border-radius: 7em 1em / 5em 1em;
    border-radius: 7em 1em / 5em 1em;
}

.skew.icon {
    padding-right: .9em;
    padding-left: .8em;
}

/* back */
.back,
.back.glossy:after,
.back.glass:after {
    border-top-color: rgba(255, 255, 255, 0.5);
    -webkit-border-radius: 1.6em 1.6em 1em 1em / 4em 4em 1em 1em;
    -moz-border-radius: 1.6em 1.6em 1em 1em / 4em 4em 1em 1em;
    border-radius: 1.6em 1.6em 1em 1em / 4em 4em 1em 1em;
}

.back.glossy:after,
.back.glass:after {
    left: 6%;
    width: 88%;
}

/* knife */
.knife {
    padding-left: 1.5em;
    -webkit-border-radius: .2em .5em .5em 8em / .2em .5em .5em 5em;
    -moz-border-radius: .2em .5em .5em 8em / .2em .5em .5em 5em;
    border-radius: .2em .5em .5em 8em / .2em .5em .5em 5em;
}

.knife.glossy:after,
.knife.glass:after {
    left: 3%;
    width: 97%;
    -webkit-border-radius: .1em .5em .5em 8em / .1em .5em .5em 2em;
    -moz-border-radius: .1em .5em .5em 8em / .1em .5em .5em 2em;
    border-radius: .1em .5em .5em 8em / .1em .5em .5em 2em;
}

.knife.glossy.icon:after,
.knife.glass.icon:after {
    left: 5%;
    width: 95%;
    -webkit-border-radius: .5em .5em 1em 6em / .5em .5em 1em 4em;
    -moz-border-radius: .5em .5em 1em 6em / .5em .5em 1em 4em;
    border-radius: .5em .5em 1em 6em / .5em .5em 1em 4em;
}

/* shield */
.shield,
.shield.glossy:after,
.shield.glass:after {
    -webkit-border-radius: .4em .4em 2em 2em / .4em .4em 3em 3em;
    -moz-border-radius: .4em .4em 2em 2em / .4em .4em 3em 3em;
    border-radius: .4em .4em 2em 2em / .4em .4em 3em 3em;
}

.shield {
    padding-left: .8em;
    padding-right: .8em;
}

.shield.icon {
    padding-left: .6em;
    padding-right: .6em;
}

/* drop */
.drop {
    border-top: none;
    -webkit-border-radius: 2em 5em 2em .6em / 2em 4em 2em .6em;
    -moz-border-radius: 2em 5em 2em .6em / 2em 4em 2em .6em;
    border-radius: 2em 5em 2em .6em / 2em 4em 2em .6em;
}

.drop.glossy:after,
.drop.glass:after {
    left: 4%;
    -webkit-border-radius: 2em 6em 2em 1em / 2em 4em 2em 2em;
    -moz-border-radius: 2em 6em 2em 1em / 2em 4em 2em 2em;
    border-radius: 2em 6em 2em 1em / 2em 4em 2em 2em;
}

.drop.icon {
    padding-right: .6em;
}


/* morph */
.morph {
    border-top: none;
    -webkit-border-radius: 5em / 2em;
    -moz-border-radius: 5em / 2em;
    border-radius: 5em / 2em;
    -webkit-transition: -webkit-border-radius .3s ease-in-out;
    -moz-transition: -moz-border-radius .3s ease-in-out;
    transition: -moz-border-radius .3s ease-in-out;
}

.morph:hover {
    -webkit-border-radius: .4em .4em 2em 2em / .4em .4em 3em 3em;
    -moz-border-radius: .4em .4em 2em 2em / .4em .4em 3em 3em;
    border-radius: .4em .4em 2em 2em / .4em .4em 3em 3em;
}

.morph:active {
    -webkit-border-radius: .3em;
    -moz-border-radius: .3em;
    border-radius: .3em;
}

.morph:after {
    display: none;
}

/* Some ugly hacks for FF.
    Thanks to David Hund for some help - http://valuedstandards.com/static/test/buttons/ */

@-moz-document url-prefix() {
    .button {
        text-align: center;
    }

    .icon {
        padding: .5em 1em;
    }

    .icon:before {
        margin-left: -.42em;
        float: left;
    }

    .drop.icon {
        padding-right: 1.1em;
    }

    .shield.icon {
        padding-left: 1.1em;
        padding-right: 1.1em;
    }

    .skew.icon {
        padding-right: 1.4em;
        padding-left: 1.3em;
    }

    .oval.icon {
        padding-left: 1.3em;
        padding-right: 1.3em;
    }

    .knife {
        padding-left: 2em;
    }
}

/* Damn, this became a fat baby..  */

/* 3D Text RYAN */

.text_ryan {
    position: relative;
    top: 35px;
    right: 50%;
    /* top: 100%;
    right: 50%;   */
    transform: translate(50%, -50%);
    text-align: center;
    text-transform: uppercase;
    font-family: verdana;
    font-size: 4em;
    font-weight: 700;
    color: #f5f5f5;
    text-shadow: 1px 1px 1px #919191,
        1px 2px 1px #919191,
        1px 3px 1px #919191,
        1px 4px 1px #919191,
        1px 5px 1px #919191,
        1px 6px 1px #919191,
        1px 7px 1px #919191,
        1px 8px 1px #919191,
        1px 9px 1px #919191,
        1px 10px 1px #919191,
        1px 18px 6px rgba(16, 16, 16, 0.4),
        1px 22px 10px rgba(16, 16, 16, 0.2),
        1px 25px 35px rgba(16, 16, 16, 0.2),
        1px 30px 60px rgba(16, 16, 16, 0.4);
}

/* End 3D Text RYAN */

/* Circle */

.btn_circle {
    display: inline-block;
    text-decoration: none;
    /* background: #DCDCDC; */
    background: rgb(196, 196, 196, 0);
    color: rgb(196, 196, 196, 0);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#DCDCDC 0%, #DCDCDC 100%);
    background-image: linear-gradient(#DCDCDC 0%, #DCDCDC 100%);
    box-shadow: inset 0px 3px 0 rgba(196, 196, 196, 0), 0 3px 3px rgba(196, 196, 196, 0);
    font-weight: bold;
    border-bottom: solid 3px #DCDCDC;
    text-shadow: 1px 1px 1px rgba(196, 196, 196, 0);
    transition: .4s;
    z-index: -1;
}

.btn_circle:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(196, 196, 196, 0);
    border-bottom: none;
    z-index: -1;
}

.btn_circle1 {
    display: inline-block;
    text-decoration: none;
    background: #81e2ec;
    color: rgb(26, 108, 122);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#cae2ee 0%, #1abbec 100%);
    background-image: linear-gradient(#c7e6f5 0%, #14a5be 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #327983;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle1:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle2 {
    display: inline-block;
    text-decoration: none;
    background: #8bec88;
    color: rgb(13, 112, 26);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#c0f5a7 0%, #49eb17 100%);
    background-image: linear-gradient(#c5f1b1 0%, #58e018 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #4cac54;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle2:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle3 {
    display: inline-block;
    text-decoration: none;
    background: #e9b065;
    color: rgb(150, 55, 11);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#fadf96 0%, #e0ba10 100%);
    background-image: linear-gradient(#f5dc8b 0%, #cfb310 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #a07d3b;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle3:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle4 {
    display: inline-block;
    text-decoration: none;
    background: #dce965;
    color: rgb(148, 150, 11);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#f3fa96 0%, #cbe010 100%);
    background-image: linear-gradient(#f5f38b 0%, #c2cf10 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #9ea03b;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle4:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle5 {
    display: inline-block;
    text-decoration: none;
    background: #c57bf0;
    color: rgb(150, 11, 150);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#ecc2f0 0%, #ab0eca 100%);
    background-image: linear-gradient(#edbef3 0%, #c910cf 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #8f3ba0;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle5:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle6 {
    display: inline-block;
    text-decoration: none;
    background: #f599cc;
    color: rgb(156, 10, 78);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#f0c2d9 0%, #ca0e66 100%);
    background-image: linear-gradient(#f3bed4 0%, #cf107f 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #a14050;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle6:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle7 {
    display: inline-block;
    text-decoration: none;
    background: #f39e9e;
    color: rgb(207, 34, 34);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#f0c2c2 0%, #e63636 100%);
    background-image: linear-gradient(#f3bebe 0%, #e23434 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #c94949;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle7:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle8 {
    display: inline-block;
    text-decoration: none;
    background: #9ef3d2;
    color: rgb(9, 100, 47);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#c2f0de 0%, #16a060 100%);
    background-image: linear-gradient(#b2f5d6 0%, #1da556 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #1e9b61;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle8:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle9 {
    display: inline-block;
    text-decoration: none;
    background: #edf39e;
    color: rgb(146, 144, 5);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#edf39c 0%, #e9ec09 100%);
    background-image: linear-gradient(#f5f4b2 0%, #d8db0d 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #c9c749;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle9:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle10 {
    display: inline-block;
    text-decoration: none;
    background: #f5b489;
    color: rgb(150, 90, 6);
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#f3c09c 0%, #f79411 100%);
    background-image: linear-gradient(#f7d1a8 0%, #f78716 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #bd8740;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle10:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

.btn_circle11 {
    display: inline-block;
    text-decoration: none;
    background: #f7a7a3;
    /**/
    color: rgb(150, 35, 6);
    /**/
    width: 122px;
    font: 18.5px/1em 'Droid Sans', sans-serif;
    /* font-size: 25px; */
    height: 120px;
    line-height: 120px;
    border-radius: 50%;
    text-align: center;
    vertical-align: middle;
    overflow: hidden;
    background-image: -webkit-linear-gradient(#f3c09c 0%, #f79411 100%);
    background-image: linear-gradient(#f7b2b2 0%, #f53b3b 100%);
    box-shadow: inset 0px 3px 0 rgba(255, 255, 255, 0.3), 0 3px 3px rgba(0, 0, 0, 0.3);
    font-weight: bold;
    border-bottom: solid 3px #bd8740;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.65);
    transition: .4s;
    cursor: pointer;
}

.btn_circle11:active {
    -ms-transform: translateY(1px);
    -webkit-transform: translateY(1px);
    transform: translateY(1px);
    box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
    border-bottom: none;
}

/* END Circle */
</style>

<?php include "footer.php"; ?>