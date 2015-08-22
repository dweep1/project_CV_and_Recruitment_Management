<!DOCTYPE html>
<html lang="en">
<head></head>
<body>
id
<?php
require_once("C:/xampp/htdocs/testSite/databaseConnection.php");
$id = $_GET["id"];
//echo $id;
$d1=$_POST["d1"];
$d2=$_POST["d2"];
$d3=$_POST["d3"];
$d4=$_POST["d4"];
$d5=$_POST["d5"];
$d6=$_POST["d6"];
$d7=$_POST["d7"];
$d8=$_POST["d8"];
$conn = mysqli_query($connect, "UPDATE candidate SET NIC= '$d1',FirstName='$d2',LastName='$d3',DateOfBirth='$d4',email='$d5',ContactNo='$d6',University='$d7', StsID='$d8' WHERE CandID = '$id'");
//echo $_POST["d1"];

?>
</body>
</html>