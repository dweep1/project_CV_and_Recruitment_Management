<!DOCTYPE html>
<html lang="en">
<head></head>
<body>

<?php
require_once("DBConnection.php");
error_reporting(E_ALL);
require_once 'vendor/autoload.php';

$id = $_GET["id"];
//echo $id;
//echo $_POST["d1"];
$d1=$_POST['d1'];
$email=$_POST['d4'];
$name=$_POST['d3'];

if(isset($_POST['d6'])){
    $d2=$_POST['d6'];
 }
 if(isset($_POST['d7'])){
    $d3=$_POST['d7'];
 }
if($d2!=null && $d3!=null){

	$data=mysqli_query($connect,"SELECT date,time FROM interviewdetails WHERE CandID='$id'");
	$result = $data->fetch_row();

	if(isset($result[0]) || isset($result[1])) {
		$conn = mysqli_query($connect, "UPDATE interviewdetails SET date='$d2',time='$d3' WHERE CandID='$id'");
	} else {
		$conn = mysqli_query($connect, "INSERT INTO interviewdetails (CandID,date,time) VALUES ('$d1','$d2','$d3')" );
	}
	
	$mail = new PHPMailer();
	$mail->IsSMTP();
	//$mail->SMTPDebug = 2;
	$mail->SMTPAuth = true;
	
	$mail->Host = "smtp.gmail.com";
	$mail->Username = "ifsworld88@gmail.com";
	$mail->Password = "ifs@1234";
	$mail->SMTPSecure = "ssl";
	$mail->Port = 465;
	$mail->From = "ifsworld88@gmail.com";
	$mail->FromName = "IFS R&D International";
	$mail->AddReplyTo("ifsworld88@gmail.com","IFS");
	
	//$mail->AddAddress("fshalika.fdo@gmail.com","shalika");
	//$mail->AddAddress("shalikafernando9@gmail.com","shalika");
	$mail->addBCC("$email","$name");
	
	$mail->WordWrap = 50;
	$mail->IsHTML(true);
	//$mail->addAttachment('images/ifs.png','ifs.png');//if needed
	
	$mail->Subject = 'Interview';
	$mail->Body = 'You have been selected for the inteview.<br><br>Your inteview will be held on <strong>' .$d2. ' at ' .$d3. '</strong> in HR department.<br><br>Thank You!';
	
	if($mail->send())
	{
		echo "sent mail successfully";
	}else{
		echo "send mail failed" . $m->ErrorInfo;
	}
}

header("Location: mailTable.php");
die();
?>
</body>
</html>