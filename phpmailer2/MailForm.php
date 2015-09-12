<!DOCTYPE html>
<html lang="en">
<head>
  <title>CV and Recruitment Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="jquery-ui-1.11.4/jquery-ui.js"></script>
  <script src="jquery-ui-1.11.4/jquery-ui.css"></script>

  <?php require_once("DBConnection.php"); ?>
 
 
</head>
  
 <body>
<div class="col-md-4"></div>
<div class="col-md-4" style="padding-top: 20px">

    <?php
    $id = $_GET['id'];
	//echo $id;
    $data = mysqli_query($connect, "SELECT CandID,NIC,FirstName,LastName,email,ContactNo FROM candidate WHERE CandID = '$id'");
    $raw1 = $data->fetch_row();
	$data = mysqli_query($connect, "SELECT date,time,CandID FROM interviewdetails WHERE CandID = '$id'");
	$raw2 = $data->fetch_row();
	?>
	
	
	<form role="form" action=<?php echo "sendMail.php?id=".$id.""?> method="post">
        Candidate ID: <input type="text" name="d1"  class="form-control" value="<?php echo $raw1[0];?>" readonly><br>
		NIC: <input type="text" name="d2" class="form-control" value="<?php echo $raw1[1];?>" readonly><br>
        Name: <input type="text" name="d3" class="form-control" value="<?php echo $raw1[2]." ".$raw1[3];?>" readonly><br>
        
        email: <input type="email" name="d4" class="form-control" value="<?php echo $raw1[4];?>" readonly><br>
        Contact no: <input type="tel" name="d5" class="form-control" value="<?php echo $raw1[5];?>" readonly><br>
		Date: <input type="text" name="d6" class="form-control" value="<?php echo $raw2[0];?>" ><br>
        Time: <input type="text" name="d7" class="form-control" value="<?php echo $raw2[1];?>"><br>
        
        <a class="btn btn-default" style="color: white; background-color: darkorchid" href="mailTable.php" >back</a>
        <input class="btn btn-default" style="color: white; background-color: darkorchid" type="submit" value="Confirm">

    </form>


</div>
</body>
</html>