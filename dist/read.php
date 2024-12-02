<?php
include("connect.php");
session_start();
if (isset($_SESSION['userid'])){
    $userid=$_SESSION['userid'];
    $update = mysqli_query($conn,"UPDATE `friendrequest` SET `readn`='yes' WHERE requestid = '$userid'");
}


?>