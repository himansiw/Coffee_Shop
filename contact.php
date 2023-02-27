<?php 
require_once("dbcon.php");
if((isset($_POST['name'])&& $_POST['name'] !='') && (isset($_POST['email'])&& $_POST['email'] !=''))
require_once("email_form.php");
{
$name = $conn->real_escape_string($_POST['name']);
$email = $conn->real_escape_string($_POST['email']);
$phone = $conn->real_escape_string($_POST['phone']);
$message = $conn->real_escape_string($_POST['message']);
$sql="INSERT INTO contact (name, email, phone, message) VALUES ('".$name."','".$email."', '".$phone."', '".$message."')";
if(!$result = $conn->query($sql)){
die('There was an error running the query [' . $conn->error . ']');
}
else
{
echo "Thank you for your submission!";
}
}
?>