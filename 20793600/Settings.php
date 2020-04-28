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



<header>
  <h1>Muzify</h1>
<p>
				<?php if(isset($_SESSION["Username"])){
					
					$user =  $_SESSION["Username"];
			
				}else{
				
				$log ="You need to login ! " ;
		
					$_SESSION["Errors"] = $log;
				
					header('location: index.php');
					}
					?>
					
				</p>	
					<ul title="navigation menu">
					
						<li ><a href="Menu.php">Home</a></li>
						<li><a href="Tracks.php">Tracks </a></li>
						<li class="selected" id="left"><a href="Settings.php">Profile</a></li>
				
					</ul>
					
					
</header>
		
		
			<main>
			<div class="box color">
			
			<h1>Hello, <?php echo $user;?></h1>
				
			<h2>You'r plan
			<?php 
			
			$connection = mysqli_connect("localhost", "abilyk", "DcqA6349", "abilyk");


			$GETresult = mysqli_query($connection, "SELECT * FROM login WHERE username='$user'");
		

			while ($rows = mysqli_fetch_array($GETresult, MYSQLI_ASSOC))
			{
					$plan = $rows["Plan"];
			}


			$result = mysqli_query($connection, "SELECT * FROM offers WHERE offer_id='$plan'");
		

			while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				
				$ImgSrting = $row["image"];
		
			
					echo "<div class='box'>";
					
					echo "<img src='$ImgSrting' alt='SubCoverImg'/>";	 
		
					echo "</div>";
		
					
					
			}
		
	
		
			
			?>
			
			<h2>
			
			
			<form method="post"> 
			
			<label class="Input"><input type="Submit" name="RANDOM"/></label>
	
			
			</form>
			
			<?php   

			if(isset($_POST['RANDOM'])){
				
				$ranarray = array();
				

				
				for($i=0;$i<10;$i++){

					$Y = rand(1,100);

					
					array_push($ranarray,$Y);
				
					echo "<br>";
					
					var_dump($ranarray);
				
			
				
				
					
				}
				
			}
			
			
			
			?>
			
			
			<a href="LogInCheck.php?boll=true"><h2>Logout</h2></a>
			</div>
			
			
			
			
			
			</main>



</body>




</html>