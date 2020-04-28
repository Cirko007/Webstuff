<?php session_start();?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  
  <title>Muzify</title>
  
  <meta name="author" content="Andrii Bilyk">
  
  <meta name="description" content="Registration Scren">
  
   <link rel="shortcut icon" type="image/png" href="images/icon.png">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" type="text/css" href="MyCSS.css">

</head>

<body>

<header>

  <h1>Muzify</h1>
  
</header>

<div class="box up color">

<form name="form2" action="LogInCheck.php" method="post">

<div class="box">

<h4><?php if (isset($_SESSION["errorsReg"])){
	
	foreach($_SESSION["errorsReg"] as $error){
		
		echo $error . "<br/>";
		
	} 
	
	
	
	unset($_SESSION["errorsReg"]);
	
	}?> </h4></div>


<label for="NewUsername"> Username: </label>

<input type="text" name="NewUsername"class="Input" required  / >


<label for="NewPassword"> Password: </label>

<input type="password" name="NewPassword" class="Input" required  / >


<label for="ConNewPassword"> Confirm Password: </label>

<input type="password" name="ConNewPassword" class="Input" required  / >

<br/>

<br/>

 <table style='width:100%'>
    
	<tr>
		<th>Title</th>
		<th>Price</th>
		<th>Description</th>
		<th>Click one</th> 		
	</tr>
					

<?php

			$connection = mysqli_connect("localhost", "abilyk", "DcqA6349", "abilyk");

			$result = mysqli_query($connection, "SELECT * FROM offers");
		
			$i = 1;
			

			while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				echo "<tr>";
							
					echo "<td>".$row["title"]."</td>";
						
					echo "<td>".$row["price"]."</td>";
							
					echo "<td>".$row["description"]."</td>";
		
					echo "<td> <input type='radio' name='PlanSelection' value='$i' required> </td>";
				
				echo"</tr>";
									
					
		
		
				
		
						
				$i++;
			
				}
				
				
				
				
				
				

				?>


			</table>

<br/>

<br/>


<input type="submit" name="REGSubmit"/ > <input type="reset" name="Reset"/ >


</form>

		</div>
					
	
	</body>

</html>