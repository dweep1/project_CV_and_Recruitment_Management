<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>IFS Resume Trekker</title>
<link rel="shortcut icon" type="image/x-icon" href="./images/favicon.ico"/>
<link href="css/style.css" rel="stylesheet" type="text/css">
  <?php
  include('phpSessions.php');
  ?>
</head>

<body>
<div>
  <header>
    <aside class="asideRight">

      <span>
            <b id="welcome">Welcome : <i><?php echo $login_session; ?></i></b>
            <b id="logout"><a href="logout.php">Log Out</a></b>
        </span>
      <form>
        <input type="search" class="searchbox"><img src="images/searchIcon.png" width="15" height="15" alt=""/>

        <a href="systemAdministratorHome.php" class="navHome"> Home</a>
        <a href="help.html" class="navHelp">Help </a></aside>
      </form>

    
    <aside class="asideLeft"></aside> 
  </header>
  
  <nav><ul class="navDownList">
    <li><a href="AdminUsers.php" class="usersAdminhome">Users</a></li>
    <li><a href="createBackup.php" class="backupAdminHome"> Backup</a></li>
    <li><a href="searchRecords.php" class="searchRecordsAdminHome"> Search Records</a></li>
    <li></li>
    <li><a href="deleteRecords.php" class="deleteRecordsAdminHome"> Delete Records</a></li>
  </ul>
  </nav>
  
  <footer>Copyright 2015 &copy;</footer>
</div>
</body>
</html>
