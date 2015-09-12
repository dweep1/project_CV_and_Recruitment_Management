<?php 
require_once("Sql.php");
require_once("GlobalVariables.php");

$s = new Sql();
$connect = $s->connectToDatabase($databaseName);

$id="";
if(isset($_GET['id'])){
	$id = $_GET['id'];
}
$sessionID="";
if(isset($_GET['rsid'])){
	$sessionID = $_GET['rsid'];
}
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


//echo $id;
$d1=$_POST["d1"];
$d2=$_POST["d2"];
$d3=$_POST["d3"];
$d4=$_POST["d4"];
$d5=$_POST["d5"];
$d6=$_POST["d6"];
$d7=$_POST["d7"];
$d8=$_POST["d8"];


$conn = mysqli_query($connect, "UPDATE candidate SET NIC= '$d1',FirstName='$d2',LastName='$d3',DateOfBirth='$d4',email='$d5',ContactNo='$d6',University='$d7', candStatusID='$d8' WHERE CandID = '$id'");
echo $_POST["d8"];

header("Location: candidateList.php?rsid=$sessionID&rname=$rName&rjob=$rJob&rdate=$rDate&rstatus=$rStatus");
die();
?>
