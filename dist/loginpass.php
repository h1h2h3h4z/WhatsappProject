<?php

include ("connect.php");
$array=array();
if(isset($_POST['email']) & isset($_POST['password'])){
    $email=$_POST['email'];
    $password=$_POST['password'];
    $select = mysqli_query($conn,"SELECT * from whatsappuser where email = '$email' and password = '$password'");
    $row = mysqli_fetch_assoc($select);
    if (mysqli_num_rows($select)>0){
        session_start();
        $_SESSION['userid'] = $row['userid'];
        $array[]=array('login'=>true);
    }
    else{
        $array[]=array('login'=>false);
    }
}
echo json_encode(array('data' => $array));
?>