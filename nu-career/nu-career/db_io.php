<?php
date_default_timezone_set("Asia/Bangkok");

$username   = 'root';
$password   = '';
$connection = new PDO('mysql:host=localhost;dbname=nu-careers', $username, $password);

$username_crm   = 'root';
$password_crm   = '';
$connection_crm = new PDO('mysql:host=localhost;dbname=nu-careers', $username_crm, $password_crm);

?>