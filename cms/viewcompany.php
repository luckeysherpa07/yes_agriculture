<?php
session_start();
include('..\config\db.php');
if(!isset($_SESSION['login'])&&$_SESSION['login']!='correct'){
header("Location: index.php");
exit;
}
if($_SESSION['login']=='yes')
	{
		echo "<h2>You arenot allowed to visit this page..</h2>";
		exit;
	}
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>All companies</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.min.js" type="text/javascript"></script>
<script>
	$(document).ready(function(){
		$('.delete').click(function(){
			var a=confirm('Are you sure?');	
			if(!a) return false;
		});	
	});
</script>
</head>

<body>
	<div class="wrapper">
    	<?php include('include-title.php') ?>
	   <?php
	   if(isset($_GET['delete']) && $_GET['delete']==1)
			{
		?>
	    <div style="color:hsla(60,87%,64%,1.00); padding:5px; width:60%; margin:0 auto; background-color:hsla(359,83%,66%,1.00); font-size:24px; text-align:center; height:30px; border-radius:10px;">Deleted successfully.</div>
	    <?php
			}
		?>
	    <?php
	    if(isset($_GET['yahoo']) && $_GET['yahoo']==1)
			{
		?>
	    <div style="color:hsla(248,100%,50%,1.00); padding:5px; width:60%; margin:0 auto; background-color:hsla(120,80%,69%,1.00); font-size:24px; text-align:center; height:30px; border-radius:10px;">Edited successfully.</div>
	    <?php
			}

		?>
	    <div class="company-info">

		    	<table border="1" cellspacing="0">
		            <tr>
		            	<td><b>S.N</b></td>
		            	<td><b>Photo</b></td>
		            </tr>
		             <?php

		            $q = "SELECT * FROM `logo`";
					$result = mysql_query($q);
					$num = mysql_num_rows($result);

					for($i=1;$i<=$num;$i++)
					{
						$row=mysql_fetch_array($result);
						$companyId = $row['id'];
						
						$s = "SELECT * FROM `logo` WHERE id = '$companyId';";
						$result2 = mysql_query($s);
						$row2=mysql_fetch_array($result2);

				?>
			    			<tr>
			    			<td><?php echo $i; ?></td>
			            	<td><img src="../logo/<?php echo $row2['logo_thumb']; ?>.jpg" height="100" width="100" /></td>
			                
			                <td> <a href="delete-company.php?id=<?php echo $companyId;?>" class="delete">Delete</td>
			                </tr>
			          <?php
					}
				
					  ?>
			        </table>
	    </div>
    </div>
</body>
</html>