<?php
include("connect.php");
session_start();

$array=array();
if(isset($_SESSION['userid'])){
    $userid= $_SESSION['userid'];
    $select= mysqli_query($conn,"SELECT * FROM friendrequest join whatsappuser on friendrequest.senderid = whatsappuser.userid where requestid = '$userid' and accept='no'"); 
    while($row=mysqli_fetch_assoc($select)){
        $array[]=array('username'=>$row['username'],
        'photo'=>$row['userimage'],
        'requestid'=>$row['friendrequestid']
        
        
    );
    }
}
echo json_encode(array('data' => $array));

?>