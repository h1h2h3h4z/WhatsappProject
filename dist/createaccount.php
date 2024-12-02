<?php

include ("connect.php");
$array=array();
if (isset($_POST['email'])){
    $email = $_POST['email'];
    $password = $_POST['password'];
    $photo = $_POST['photo'];
    $username= $_POST['username'];
    $about = $_POST['about'];
    $insert = mysqli_query($conn,"INSERT INTO `whatsappuser` (`username`, `email`, `password`, `userimage`, `description`) VALUES ('$username', '$email', '$password', '$photo', '$about')");
    if ($insert){
        
        $array[]=array('login'=>true);
    }
    else{
        $array[]=array('login'=>false);
    }
}
echo json_encode(array('data' => $array));
?>