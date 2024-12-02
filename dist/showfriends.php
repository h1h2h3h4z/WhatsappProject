<?php
include("connect.php");
session_start();
$array=array();
if (isset($_SESSION['userid'])){
    $userid=$_SESSION['userid'];
    $select = mysqli_query($conn,"SELECT * FROM friendrequest join whatsappuser on friendrequest.senderid = whatsappuser.userid where requestid = '$userid'  and accept ='yes' ");
    $select2 = mysqli_query($conn,"SELECT * FROM friendrequest join whatsappuser on friendrequest.requestid  = whatsappuser.userid where senderid = '$userid' and accept ='yes' ");
   
    while($row=mysqli_fetch_assoc($select)){
        $lastmessage="";
        $r=$row['userid'];
        $select3 = mysqli_query($conn,"SELECT * from messages where (senderid ='$userid' and receverid ='$r') or (senderid = '$r' and receverid ='$userid')  ORDER BY messageid DESC LIMIT 1");
        while($row3=mysqli_fetch_assoc($select3)){
            $lastmessage= $row3['textmessage'];
        }

        $array[]=array('username'=>$row['username'],
        'photo'=>$row['userimage'],
        'id'=>$row['userid'],
        'lastmessage'=>$lastmessage
        
    );
    }
}
while($row2=mysqli_fetch_assoc($select2)){
    $lastmessage="";
    $r=$row2['userid'];
    $select3 = mysqli_query($conn,"SELECT * from messages where (senderid ='$userid' and receverid ='$r') or (senderid = '$r' and receverid ='$userid')  ORDER BY messageid DESC LIMIT 1");
    while($row3=mysqli_fetch_assoc($select3)){
        $lastmessage= $row3['textmessage'];
    }
    $array[]=array('username'=>$row2['username'],
    'photo'=>$row2['userimage'],
    'id'=>$row2['userid'],
    'lastmessage'=>$lastmessage
);
}

echo json_encode(array('data' => $array));

?>