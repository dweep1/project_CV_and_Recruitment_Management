<?php

$user = 'root';
$pass = '';
$database = 'recruit';
$connect = mysqli_connect('127.0.0.1',$user,$pass) or die("Unable to connect");
$select_db = mysqli_select_db($connect,$database) or die("Unable to connect");



?>