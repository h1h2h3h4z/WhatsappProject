<?php
include("connect.php");
session_start();
$userid=$_SESSION['userid'];
if (isset($_POST['recieverid'])){
    $recieverid = $_POST['recieverid'];
    $sendfriend= mysqli_query($conn,"INSERT INTO `friendrequest`(`senderid`, `requestid`) VALUES ('$userid','$recieverid')");
}


?>