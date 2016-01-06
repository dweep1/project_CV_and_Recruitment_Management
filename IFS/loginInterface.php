<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>IFS Resume Trekker</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">


    <?php
include('login.php'); // Includes Login Script

if(isset($_SESSION['login_user'])){
    if($_SESSION['type']=='admin_officer'){
        header("location: index.php");
    }
    if($_SESSION['type']=='system_admin'){
        header("location: systemAdministratorHome.php");
    }

}
?>
</head>
<body>
<div>
    <header>
        <aside class="asideRight">
        </aside>
        <aside class="asideLeft"></aside>
    </header>


<div id="main">
    <h1></h1>
    <div id="login">
        <h2>Login</h2>
        <form action="" method="post" style="padding-bottom: 100px">
            <label>UserName :</label>
            <input id="name" name="username" placeholder="username" type="text"><br>
            <label>Password :</label>
            <input id="password" name="password" placeholder="**********" type="password"><br>
            <input name="submit" type="submit" value=" Login ">
            <span><?php echo $error; ?></span>
        </form>
    </div>
</div>
<footer>Copyright 2015 &copy;</footer>
</div>
</body>
</html>