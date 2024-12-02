<?php

include ("connect.php");
$array=array();
if(isset($_POST['email'])){
    $email=$_POST['email'];
    $select = mysqli_query($conn,"SELECT * from whatsappuser where email = '$email'");
    if (mysqli_num_rows($select)>0){
        
        $array[]=array('login'=>true);
    }
    else{
        $array[]=array('login'=>false);
    }
}
echo json_encode(array('data' => $array));
?>