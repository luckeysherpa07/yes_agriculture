<?php
	session_start();
	if(!isset($_SESSION['login']) && $_SESSION['login']!='correct')
	{
		header("Location: index.php");
		exit;
	}
	if($_SESSION['login']=='yes')
	{
		echo "<h2>You arenot allowed to visit this page..</h2>";
		exit;
	}
?>
<!DOCTYPE html>
<html>
<head>
	
	<title>Log In</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>
<body>
	<div class="wrapper">
		<?php include('include-title.php') ?> 
		<br clear="all" />
		<div class="post_job">
			<h1>Add a Photo</h1><br /><br />
		<?php
			if(isset($_GET['success']) && $_GET['success']=='1')
	{
		
?>
<div style="color:#FFF; background-color:green; height: 50px; font-size: 20px; padding: 10px; text-align:center;">The photo has been posted successfully.</div>
	<a href="addcompany.php">Return Back</a>&nbsp;||&nbsp;<a href="logout.php">Logout</a>
<?php
	exit;
	} 
?>
	<?php
			if(isset($_GET['err']) && $_GET['err']=='1')
	{
		
?>
<div style="color:#FFF; background-color:red; height: 25px; font-size: 20px; padding: 10px; text-align:center;">The username already exit. Choose another username.</div>
	
<?php
	
	} 
?>

<?php
			if(isset($_GET['err']) && $_GET['err']=='2')
	{
		
?>
<div style="color:#FFF; background-color:red; height: 25px; font-size: 20px; padding: 10px; text-align:center;">There was error sending the email.</div>
	
<?php
	
	} 
?>
				<form action="addcompany_action.php" method="post" enctype="multipart/form-data"><br />
					<label>Upload Photo:</label><input type="file" id="image" name="image" required /><br /><br />
					<input type="submit" id="submit" name="submit" value="Add Photo" />
				</form>
			</div>
		</div>
</body>
</html>