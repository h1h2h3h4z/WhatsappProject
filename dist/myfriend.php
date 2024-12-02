<?php
include("connect.php");
session_start();
$array=array();
if (isset($_POST['friendid'])){
    $userid=$_SESSION['userid'];
    $friendid = $_POST['friendid'];
    $select = mysqli_query($conn,"SELECT * FROM whatsappuser where userid= '$friendid' ");
    if($row=mysqli_fetch_assoc($select)){
        $array[]=array('username'=>$row['username'],
                'photo'=>$row['userimage'],
                'id'=>$row['userid']
                
            );
    }
}
echo json_encode(array('data' => $array));
?>