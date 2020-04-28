<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
<head>

 <meta charset="utf-8">
  
  <title>Muzify</title>
  
  <meta name="author" content="Andrii Bilyk">
  
  <meta name="description" content="Login Scren check">
  
   <link rel="shortcut icon" type="image/png" href="images/icon.png">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">	
  
  <link rel="stylesheet" type="text/css" href="MyCSS.css">


</head>

<body>


<?php 

if(isset($_GET["boll"])){
	
	$test = $_GET["boll"];
	
	if($test == "true"){	
	
	unset($_SESSION["Username"]);
	echo $test;
	//header('location: index.php');
	}
}

if(isset($_POST["Submit"]) || isset($_POST["REGSubmit"]) ){

// Var
$errors = array(); 
$_SESSION["errorsReg"]= array();
//connetion vars 
$MyPhPPass = "DcqA6349";
$MyPhPUser = "abilyk";
$MyPhPHost = "localhost";
$MyPhPTable = "abilyk";

//connect to the database
$connection = mysqli_connect("$MyPhPHost", "$MyPhPUser", "$MyPhPPass", "$MyPhPTable");

if(isset($_POST["Submit"])){

$user = $_POST["Username"];
		
$passUNMD5 = $_POST["Password"];
			
$pass = md5($passUNMD5);			
			
$querylogin = "SELECT * FROM login WHERE username='$user' AND password='$pass'";

$resultslogin = mysqli_query($connection, $querylogin);

  	if (mysqli_num_rows($resultslogin) == 1) {
  	  
	  $_SESSION["Username"] = $user;
  	  
	  echo  $_SESSION["Username"]. "win";
	  
	  header('Location: Menu.php');
		
  	}else {
		
  		$errors ="Wrong username/password combination" ;
		
		$_SESSION["Errors"] = $errors;
		
	  echo "loss";
		
			header('location: index.php');
	}	
	

}
if(isset($_POST["REGSubmit"])){

$RegUser = mysqli_real_escape_string($connection,$_POST["NewUsername"]);

$RegPlan = $_POST["PlanSelection"];
		
$RegPass = $_POST["NewPassword"];

$ConRegPass = $_POST["ConNewPassword"];

$REGSQL = "SELECT * FROM login WHERE username='$RegUser'";

$SQLresult = mysqli_query($connection,$REGSQL); 

$counte = mysqli_num_rows($SQLresult);
 
 if ($counte > 0 ) { 
    

	array_push($_SESSION["errorsReg"], "Username already exists");
	
	echo  "test seccesful";
	

 }

if ($RegPass != $ConRegPass) {
	
	array_push($_SESSION["errorsReg"], "The two passwords do not match");
  
  }	
  
  if (count($_SESSION["errorsReg"]) == 0) {

	$pass=md5($RegPass);	
	
	$sql  =  "INSERT INTO login (username, password, Plan)
    VALUES ('$RegUser','$pass','$RegPlan')";


	if(mysqli_query($connection, $sql)){
			
			echo "Records inserted successfully.";

				header("location: index.php");

	} else{
    
			echo "ERROR: Could not able to execute $sql. " . mysqli_error($connection);
	}
		
	}else{
		
		var_dump($_SESSION["errorsReg"]);
		
		header("location: Registration.php");
		
	}	
	
	
}

}else{
	
	$log ="You need to login ! " ;
		
		$_SESSION["Errors"] = $log;
		
			header("location: index.php");
	
	
}

?>

</body>




</html>