<?php

$connect = mysqli_connect('localhost','root',"") or die("Unable to connect");
$select_db = mysqli_select_db($connect,'recruit') or die("Unable to connect to database");
    if(!empty($_POST['name']))
    {
     foreach ($_POST['name'] as $key => $value) 
        {
            $item = $_POST["name"][$key];
            
            $qty = $_POST["weight"][$key];

            $sql = mysqli_query($connect,"insert into evaluationcriteria values ('','$item'', '$qty')");        
        }

    }
	
	else{
		
		throw new Exception("Please enter a name for criteria");
	}
?>