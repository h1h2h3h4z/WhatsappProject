<?php
include ("connect.php");
session_start();
if (isset($_POST['requsetid'])){
    $userid=$_SESSION['userid'];
    $requsetid= $_POST['requsetid'];
    $setfriend= mysqli_query($conn ,"UPDATE `friendrequest` SET `accept`='yes' WHERE friendrequestid = '$requsetid'");

}


?>