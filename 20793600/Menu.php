<?php session_start();?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  
  <title>Muzify</title>
  
  <meta name="author" content="Andrii Bilyk">
  
  <meta name="description" content="Main Menu">
  
   <link rel="shortcut icon" type="image/png" href="images/icon.png">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" type="text/css" href="MyCSS.css">

</head>

<body>

<header>
  <h1>Muzify</h1>
<p>
				<?php if(isset($_SESSION["Username"])){
					
					echo "User: " . $_SESSION["Username"];
			
				}else{
				
				$log ="You need to login ! " ;
		
					$_SESSION["Errors"] = $log;
				
					header('location: index.php');
					}
					?>
					
				</p>	
					<ul title="navigation menu">
					
						<li class="selected"><a href="Menu.php">Home</a></li>
						<li><a href="Tracks.php">Tracks </a></li>
						<li id="left"><a href="Settings.php">Profile</a></li>
				
					</ul>
					
					
</header>
		
		
			<main>
			<div class="box">
				<h2>Hello & Welcome to Muzify </h2>
				
				<p>The best music streaming service this side of the web!</p>
			
			
			</div>
			
			
			<div class="box color border">
			<?php
			
			$connection = mysqli_connect("localhost", "abilyk", "DcqA6349", "abilyk");

			$result = mysqli_query($connection, "SELECT * FROM offers");
		
			$i = 1;

			while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				
				$ImgSrting = $row["image"];
		
			echo "<div class='accordionbox'>";
		
					echo "<input id='accordionbox-$i' type='checkbox' name='tab'>";
				
					echo "<label for='accordionbox-$i'>". $row["title"]." </label>";
						
					echo "<div class='accordionbox-content'>";
					
					
					echo "<div class='box'>";
											
					echo "<p>"."Price: ".$row["price"]."</p>";
							
					echo "<p>"."Description: ".$row["description"]."</p>";
					
					echo "</div>";



					
					echo "<div class='box'>";
					
					echo "<img src='$ImgSrting' alt='SubCoverImg'/>";	 
		
					echo "</div>";
		
					
					
					echo "</div>";
			
			echo "</div>";	
			$i++;
			
			}

			?>
			</div>
			
						
						
					
			
			</main>
				
</body>

</html>