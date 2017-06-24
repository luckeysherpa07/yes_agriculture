<?php
	session_start();
	include('../config/db.php');

	$id = $_GET['id'];
	echo $id;
	$q = "DELETE FROM `logo` WHERE id = '$id'";

	mysql_query($q);

	header("Location: viewcompany.php?delete=1");
?>