<?php
include("connect.php");
session_start();
$userid=$_SESSION['userid'];
$select= mysqli_query($conn,"SELECT * FROM friendrequest where requestid = '$userid' and readn='no'");
$i=0;
$array=array();
while($row=mysqli_fetch_assoc($select)){
    $i+=1;
}
$array[]=array('numberofrequest'=>$i);
echo json_encode(array('data' => $array));

?>