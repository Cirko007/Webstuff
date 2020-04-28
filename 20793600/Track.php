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
					<li><a href="Tracks.php">Tracks</a></li>
					<li id="left"><a href="Settings.php">Profile</a></li>
				
				</ul>
					
					
</header>
		
		<main>
		
			<div class="box color">
		
			<?php
			
		
						$connection = mysqli_connect("localhost", "abilyk", "DcqA6349", "abilyk");
		
				
						if(isset($_GET['id'])){
					
						$id = $_GET['id'];
		
						$SQL ="SELECT * FROM tracks WHERE track_id=$id";
			
						$result = mysqli_query($connection, $SQL);
						
						while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
						{
							$img = $row["image"];
							$artist = $row["artist"];
							$name = $row["name"];
							$album = $row["album"];
							$description = $row["description"];
							$genre = $row["genre"];
							$sample = $row["sample"];
							
							
							
							
							echo "<img src='$img' alt='photo'>";
				
							echo "<h2>Artist: $artist</h2>";
			
							echo "<h2>Name: $name</h2>";
							
							echo "<h2>Album: $album</h2>";
			
							echo "<h2>Genre: $genre</h2>";
							
							echo "<h2>Description</h2>";
						
							echo "<h3>$description</h2>";
							
						
							
							echo "<audio controls>";
			
							echo "<source src='$sample' type='audio/mpeg'>";
							
							echo "</audio>";
							
							
						}	

							echo "<hr>";
							
							echo "<h1>Write a review!</h1>";
							
							echo "<form method='post'>";
		
							echo "<lable><input type='text' name='rev' class='Input' placeholder='Write' / ></lable>";
							
							echo "<lable><input type='number' name='int'  min='0' max='10'class='Input' placeholder='Rate'/ ></lable>";
		
							echo "<input type='submit' name='submit'  / >";
		
							echo "</form>";						
				
						if(isset($_POST['submit'])){
							
							
							$user = $_SESSION["Username"];
							
							$rev = mysqli_real_escape_string($connection,$_POST['rev']);
							
							$int =$_POST['int'];
							
							$sql = "INSERT INTO reviews(product_id,name,review,rating)
							VALUES ('$id', '$user','$rev','$int')";

							if ($connection->query($sql) === TRUE) {


							//header('Location: Test2.php');

							} else {
	
	
							echo "Error: " . $sql . "<br>" . $connection->error;
							}


							
							
						}
			

						$AVGjoin ="SELECT  AVG(rating) FROM reviews WHERE product_id=$id";
						
						$AVG = mysqli_query($connection, $AVGjoin);
						
						while ($ros = mysqli_fetch_array($AVG, MYSQLI_ASSOC))
						{
							$num = 1;
							echo "<hr>";
							echo "<h1>Review<h1>";
							echo "<h1>".$ros["AVG(rating)"]*$num."<h1>";	
						
						
						}						








						
				
						$sqljoin ="SELECT name,review, rating  FROM reviews WHERE product_id=$id";
						
						$Review = mysqli_query($connection, $sqljoin);
						
						while ($rows = mysqli_fetch_array($Review, MYSQLI_ASSOC))
						{
							 
						
							
						
							
							$rname = $rows["name"];
							$review = $rows["review"];
							$rating = $rows["rating"];
							
				
						
							
							echo "<h2>$rname: $review</h2>";
							
							echo "<h2>Rrating: $rating/10</h2>";
							
							echo "<hr>";
							
							
							
							
				
						}
						
						}
						
				
						
				?>
			
				</div>
			
			
		</main>
				
</body>

</html>