<?php
require 'dbcon.php';

$target_dir = "upload/";
$target_file = $target_dir . basename($_FILES["fup"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
if(isset($_POST["upload"])) {
	$check = getimagesize($_FILES["fup"]["tmp_name"]);
	if($check !== false) {
		echo "File is an image - " . $check["mime"] . ".";
		$uploadOk = 1;
	}
	else {
		echo "File is not an image.";
		$uploadOk = 0;
	}
}
if (file_exists($target_file)) {
	echo "Sorry, file already exists.";
	$uploadOk = 0;
}
if ($_FILES["fup"]["size"] > 5000000) {
	echo "Sorry, your file is too large.";
	$uploadOk = 0;
}
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
	echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
	$uploadOk = 0;
}
if ($uploadOk == 0) {
	echo "Sorry, your file was not uploaded.";
}
else {
	if (move_uploaded_file($_FILES["fup"]["tmp_name"], $target_file)) {
		echo "The file ". basename( $_FILES["fup"]["name"]). " has been uploaded.";
		if (isset($_POST['upload'])) {
 
       move_uploaded_file($_FILES["fup"]["tmp_name"],"upload/" . $_FILES["fup"]["name"]);			
            
			$sql="INSERT INTO gallery(image_name)  VALUES('".$_FILES['fup']['name']."')";
		}
		if ($conn->query($sql) === TRUE) {
			echo "<br>New record created successfully";
		}
		else {
			echo "<br>Error: " . $sql . "<br>" . $conn->error;
		}
	}
	else {
		echo "Sorry, there was an error uploading your file.";
	}
}
?>