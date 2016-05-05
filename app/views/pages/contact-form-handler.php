<?php 
$errors = '';
$myemail = 'brianc.ayers@gmail.com';
if( 
	empty($_POST['email'])) 
{
    $errors .= "\n Error: Email field is required";
}

$email = $_POST['email']; 

if( empty($errors))
{
	$to = $myemail; 
	$email_subject = "Contact form submission: $email";
	$email_body = "You have received a new request. ".
	" Here are the details: \n Email: $email"; 

	
	mail($to,$email_subject,$email_body,$headers);
	//redirect to the 'thank you' page
	header('Location: contact.html');
} 
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
	<title>Contact form handler</title>
</head>

<body>
<!-- This page is displayed only if there is some error -->
<?php
echo nl2br($errors);
?>


</body>
</html>