<?php session_start();?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  
  <title>Muzify</title>
  
  <meta name="author" content="Andrii Bilyk">
  
  <meta name="description" content="Tracks Scren">
  
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
					
					<li><a href="Menu.php">Home</a></li>
					<li class="selected"><a href="Tracks.php">Tracks</a></li>
					<li id="left"><a href="Settings.php">Profile </a></li>
				
				</ul>
					
					
</header>
		
		<main>
			
			<div class="box">
				<h2>Our Music selection</h2>
			</div>
			<div class="box">
			<form method="post">
			<label><input type="text" class="Input" name="genre" placeholder="Serch by genre, artist, album, name"/></label>
			<input type="Submit" name="Submit"  />
			
			</form>
			</div>
			<?php
			$connection = mysqli_connect("localhost", "abilyk", "DcqA6349", "abilyk");
			
				
			if(isset($_POST['Submit'])){
				
			if(isset($_POST['genre'])){
				
				$genre = mysqli_real_escape_string($connection, $_POST['genre']);
				
				
				$SQLL = "SELECT * FROM tracks WHERE genre LIKE '%$genre%' OR artist LIKE '%$genre%' OR Album LIKE '%$genre%' OR name LIKE '%$genre%' ";
			
				
			}
			
			}
			
			
			
			
			
			if(isset($SQLL)){
				$Q = $SQLL ;
				
				
			
			}else{
				$Q = "SELECT * FROM tracks";
			}
			
			
			
			
			$result = mysqli_query($connection,$Q);
			
			while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
			{
				
				
				$img = $row["thumb"];
				$artist = $row["artist"];
				$name = $row["name"];
				$album = $row["album"];
				
				echo "<a href='Album.php?album=$album'>";
				
				echo "<div class='box color'>";
				
				echo "<span><h3>ARTIST:</h3></span>";
				
				echo "<span><h4>$artist</h4></span>";
			
				echo "<span><h3>SONG:</h3></span>";
				
				echo "<span><h4>$name</h4></span>";
				
				
				
				echo "<img src='$img' alt='photo'>";
				
				
				echo "</div>";
				
				
				echo "</a>";
				
				echo "<hr>";
			
			}

			
				
			
			

			?>
			
			
	
			
						
						
					
			
			</main>
				
</body>

</html>