<?php session_start();?>	
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  
  <title>Muzify</title>
  
  <meta name="author" content="Andrii Bilyk">
  
  <meta name="description" content="Login Scren">
  
   <link rel="shortcut icon" type="image/png" href="images/icon.png">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" type="text/css" href="MyCSS.css">

</head>

<body>

<header>
  <h1>Welcome to Muzify</h1>
</header>

<div class="box up color">

<div class="box"><h2><?php if (isset($_SESSION["Errors"])){echo $_SESSION["Errors"]; unset($_SESSION["Errors"]);}?> </h2></div>

<form name="form1" action="LogInCheck.php" method="post">

<label for="Username">Username: </label>

<input type="text" name="Username"class="Input" required  / >


<label for="Password">Password: </label>
 
<input type="password" name="Password" class="Input" required  / >

<br/>

<input type="submit" name="Submit"/ > <input type="reset" name="Reset"/ >

</form>
	
<p>No Muzify Account? No problem. Click <a href="Registration.php">here !</a></p>

</div>

<div class="box up">
<img src="images/Login.svg" alt="img"/>
</div>



</body>

</html>