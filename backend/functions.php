<?php 
include "dbconnect.php";

use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
 

function setFilter($val)
{
    $step1 = trim($val);
    $step2 = strip_tags($step1);
    $step3 = htmlspecialchars($step2, ENT_QUOTES);
    $result = $step3;
    return $result;
}

$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 2;
    // (0): Disable debugging (you can also leave this out completely, 0 is the default).
    // (1): Output messages sent by the client.
    // (2): as 1, plus responses received from the server (this is the most useful setting).
    // (3): as 2, plus more information about the initial connection - this level can help diagnose STARTTLS failures.
    // (4): as 3, plus even lower-level information, very verbose, don't use for debugging SMTP, only low-level problems.

    $mail->isSMTP();
    $mail->Host = 'mail.175del2016.it';
    $mail->CharSet = "utf-8";
    $mail->SMTPAuth = true;
    $mail->Username = 'report@175del2016.it';
    $mail->Password = 'X8iSkpwVoZsK';
    $mail->SMTPSecure = 'ssl';
    $mail->Port = 465;
    $mail->SMTPOptions = array(
        'ssl' => [
            'verify_peer' => false,
            'verify_peer_name' => false,
            'allow_self_signed' => true,
        ],
    );
    // Content
    $mail->isHTML(true);
    $subject = "Information";
    $mail->Subject = $subject;
    $mail->setFrom('support@semaforo.it', 'Eri Web');
    $mail->AltBody = 'This is an informative message.';


    global $connection;
    $name =  str_replace(array("'", "’", "“", "”"), array("\'", "\'", "\'", "\'"), $_POST['name']);
    $email = str_replace(array(" ", "'", "’", "“", "”"), array("", "\'", "\'", "\'", "\'"), $_POST['email']);
    $message = str_replace(array("'", "’", "“", "”"), array("\'", "\'", "\'", "\'"), $_POST['message']);
    
        $mail2 = clone $mail;

   //******************** the email body  ********************/
            $mail2->Body = "
    <h1>New email from your website. </h1>
    <p>A new client want contact you here are his informations: <br>
     <b>Client: ".$name."</b>
     <br><b>Email: </b>".$email."
     <br><b>Message: <b>" .$message." <p>
       
    ";
        
    $mail2->setFrom($email, 'Website Mail');
    $mail2->addAddress('rei.etrc@gmail.com', 'Dilaver Musa');
    $mail2->AltBody = 'Questo è un messaggio informativo.';

    $mail2->send();

    echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}

 
 
 ?>