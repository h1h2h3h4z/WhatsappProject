<?php
include ("connect.php");
session_start();
$userid=$_SESSION['userid'];
if(isset($_POST['userreciverid'])){
    $userreciver=$_POST['userreciverid'];
    $remove= mysqli_query($conn,"DELETE FROM `friendrequest` WHERE `senderid`='$userid' and `requestid` = '$userreciver';");
}

?>