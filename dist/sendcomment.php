<?php
include ("connect.php");
session_start();
if (isset($_POST['messagetext'])){
    $messagetext=$_POST['messagetext'];
    $userid= $_SESSION['userid'];
    $receverid = $_POST['receverid'];
    $insert= mysqli_query($conn,"INSERT INTO `messages`( `senderid`, `receverid`, `textmessage`) VALUES ('$userid','$receverid','$messagetext')");
}


?>