<?php

if(isset($_POST['email'])) {

$email_to = "thenajohen@gmail.com";

$email_subject = "Feedback of customer services";

function died($error) {

    echo "We are sorry that we can procceed your request due to error(s)";

    echo "Below is the error(s) list <br /><br />";

    echo $error."<br /><br />";

    echo "Please go back and fix these errors.<br /><br />";

    die();

}

    if(!isset($_POST['name']) ||

       !isset($_POST['email']) ||

       !isset($_POST['phone']) ||

       !isset($_POST['message'])) {

    died('We are sorry to proceed your request due to error within form entries');   

}

$name = $_POST['name']; 
$email = $_POST['email'];
$phone = $_POST['phone']; 
$message = $_POST['message']; 

$error_message = "";

$email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';

 if(!preg_match($email_exp,$email)) {

$error_message .= 'You entered an invalid email<br />';

 }

$string_exp = "/^[A-Za-z .'-]+$/";

 if(!preg_match($string_exp,$name)) {

$error_message .= 'Invalid name<br />';

 }

 if(strlen($message) < 2) {

$error_message .= 'Invalid message<br />';

 }

 if(strlen($error_message) > 0) {

   died($error_message);

 }

$email_message = "Form details below.\n\n";

function clean_string($string) {

$bad = array("content-type","bcc:","to:","cc:","href");

return str_replace($bad,"",$string);

}

$email_message .= "Name: ".clean_string($name)."\n";

$email_message .= "Email: ".clean_string($email)."\n";

$email_message .= "Phone number: ".clean_string($phone)."\n";

$email_message .= "Message: ".clean_string($message)."\n";

$headers = 'From: '.$email."\r\n".

'Reply-To: '.$email."\r\n" .

'X-Mailer: PHP/' . phpversion();

@mail($email_to, $email_subject, $email_message, $headers);

?>

Thank you for contacting us. We will be in touch with you very soon.

<?php

}

?>

