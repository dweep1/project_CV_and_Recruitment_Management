<?php
	require_once("Sql.php");

	$rStatusID="";
	$RSID="";
	if(isset($_GET['sessionStatusID'])){
		$rStatusID=$_GET['sessionStatusID'];
	}
	if(isset($_GET['RSID'])){
		$RSID=$_GET['RSID'];
	}
	
	$s = new Sql();
	$s->changeSessionStatus($RSID,$rStatusID);
?>
