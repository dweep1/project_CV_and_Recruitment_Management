<!DOCTYPE html>
<html lang="en">
<head>
  <title>CV and Recruitment Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src="jquery/jquery.js"></script>
  <script src="jquery-ui-1.11.4/jquery-ui.js"></script>
  <script src="jquery-ui-1.11.4/jquery-ui.css"></script>
  <script src="jquery-ui-1.11.4/jquery.min.js"></script>
  <script src="jquery-ui-1.11.4/jquery-ui.min.js"></script>

  <?php require_once("DBConnection.php"); ?>

<!--javascript for the table-->
  <script type="text/javascript">
<!---->
<!--        $(function() {-->
<!--            $( "#draggable" ).draggable();-->
<!--            $( "#droppable" ).droppable({-->
<!--                drop: function( event, ui ) {-->
<!--                    $( this )-->
<!--                        .addClass( "ui-state-highlight" )-->
<!--                        .find( "p" )-->
<!--                        .html( "Dropped!" );-->
<!--                }-->
<!--            });-->
<!--        });-->
//
//      $(function() {
//          $( "tr" ).selectable();
//      });

<!-- clickable raws-->
    $(document).ready(function(){
        $('table tbody tr').click(function(){
            window.location = $(this).attr('href');
            return false;
        });
    });

	/*$('#candidates').selectable({
	  filter:'tbody tr',
	  stop: function(event, ui){
		var result = $( "#plate" ).empty().html('You selected the following fruits: ' + $( this ).find( ".ui-selected" ).map(function() {
		  return this.id;
		}).get().join(", "));
	  }
	});*/
</script>

<style>

.ui-selecting, .ui-selected { background: lightBlue }  
#plate { background-color:#505050; height:100px;width:200px;color:white; }
</style>

 </head>

  <body>
  
  <nav class="navbar navbar-default" >  
        <div class="container">
            
                <ul class="nav navbar-nav">
					<li><a href="home.php">Home</a></li>
					<li><a href="sessions.php">Sessions</a></li>
					<li><a href="reports.php">Reports</a></li>
					<li><a href="UploadCVs.php">input CVs</a></li>
				</ul>   
            
          </div>
		  
    </nav>


  <div class="container" style="background-color: white;">
	<div class="panel-group" style="padding-top: 30px">
	
        <table id="candidates" class="table table-hover">
<!--            Table header-->

            <thead>
            <tr>
                <th>Candidate ID</th>
                <th>NIC</th>
                <th>Name</th>
                <th>email address</th>
                <th>Contact no</th>
				<th>Date</th>
				<th>Time</th>

            </tr>
            </thead>
			<tbody>

            <?php

            $data = mysqli_query($connect, "SELECT candidate.CandID,NIC,FirstName,LastName,email,ContactNo,date,time FROM Candidate LEFT JOIN interviewdetails ON candidate.CandID=interviewdetails.CandID");
			
            while($raw = $data->fetch_row()) {
				

                ?>
                
                <script> var id = <?php echo(json_encode($raw[0])); ?>;</script>
                <tr  id = <?php echo $raw[0] ?> href=<?php echo "MailForm.php?id=".$raw[0].''?>>
				
                    <td><?php echo $raw[0] ?></td>
                    <td><?php echo $raw[1] ?></td>
                    <td><?php echo $raw[2]." ".$raw[3] ?></td>
                    <td><?php echo $raw[4] ?></td>
                    <td><?php echo $raw[5] ?></td>
					<td><?php echo $raw[6] ?></td>
					<td><?php echo $raw[7] ?></td>
					<td><td>
					<td><td>
                </tr>

            <?php } ?>
</tbody>
        </table>


  </div>
  <!-- /.container -->
  <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>CV & Recruitment Management System</p>
                </div>
            </div>
        </div>
    </footer>
</div>


  </body>
</html>