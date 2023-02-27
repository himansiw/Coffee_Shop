<?php
$conn = new mysqli("localhost","root","","expo");
if(isset($conn))
{
echo"connection is  successful";
}
else{
echo"connection is not successful";
}
?>