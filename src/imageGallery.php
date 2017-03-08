<?php
	$directory = "images/";
	$images = glob($directory . "*.jpg");
	echo json_encode($images)
?>