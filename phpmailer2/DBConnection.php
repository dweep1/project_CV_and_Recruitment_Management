<?php 
	$host = 'localhost';
	$user = 'root';
	$password = '';
	$db = 'recruit';
	
	$connect = mysqli_connect($host,$user,$password) or die("unable to connect");
	$select_db = mysqli_select_db($connect,$db) or die("Unable to connect");
	
	
	
	
?>