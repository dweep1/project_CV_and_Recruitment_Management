<!DOCTYPE html>
<html lang="en">
<head></head>
<body>
<?php 
		require_once("Sql.php");
		require_once("GlobalVariables.php");
		$s = new Sql();
		$connect = $s->connectToDatabase($databaseName);
		
		$rSessionID="";
		if(isset($_GET["rsid"])){
				$rSessionID=$_GET["rsid"];
		}
		echo $rSessionID;
		$rName="";
		if(isset($_GET["rname"])){
				$rName=$_GET["rname"];
		}
		$rJob="";
		if(isset($_GET["rjob"])){
				$rJob=$_GET["rjob"];
		}
		$rDate="";
		if(isset($_GET["rdate"])){
				$rDate=$_GET["rdate"];
		}
		$rStatus="";
		if(isset($_GET["rstatus"])){
				$rStatus=$_GET["rstatus"];
		}
?>
</body>
</html>