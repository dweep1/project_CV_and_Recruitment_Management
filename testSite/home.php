
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> Home </title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
<!--    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>-->
        <script src="js/bootstrap.min.js"></script>
        <script src="jquery/jquery.js"></script>
        <script src="jquery-ui-1.11.4/jquery-ui.js"></script>
        <script src="jquery-ui-1.11.4/jquery-ui.css"></script>



      <?php require_once("C:/xampp/htdocs/testSite/databaseConnection.php"); ?>

javascript for the table
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
        $('table tr').click(function(){
            window.location = $(this).attr('href');
            return false;
        });
    });

</script>

  </head>

  <body>

  <div>

      <div class="col-md-2"></div>
    <div class="col-md-8 panel-group" style="padding-top: 30px">
        <table class="table table-hover">
<!--            Table header-->
            <thead>
            <tr>
                <th>Candidate ID</th>
                <th>NIC</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Date of birth</th>
                <th>email address</th>
                <th>Contact no</th>
                <th>University</th>
                <th>Status</th>

            </tr>
            </thead>

            <?php

            $data = mysqli_query($connect, "SELECT * FROM candidate");

            while($raw = $data->fetch_row()) {

                ?>
                
                <script> var id = <?php echo(json_encode($raw[0])); ?>;</script>
                <tr href=<?php echo "profile.php?id=".$raw[0].''?>>
                    <td id="draggable"><?php echo $raw[0] ?></td>
                    <td><?php echo $raw[1] ?></td>
                    <td><?php echo $raw[2] ?></td>
                    <td><?php echo $raw[3] ?></td>
                    <td><?php echo $raw[4] ?></td>
                    <td><?php echo $raw[5] ?></td>
                    <td><?php echo $raw[6] ?></td>
                    <td><?php echo $raw[7] ?></td>
                    <td><?php echo $raw[8] ?></td>

                </tr>

            <?php } ?>

        </table>

    </div>

  </div>


  </body>
</html>

