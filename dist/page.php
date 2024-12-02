<?php
include("connect.php");

session_start();
$array=array();
if(isset($_SESSION['userid'])){
    $userid= $_SESSION['userid'];
    $select = mysqli_query($conn, "SELECT * FROM whatsappuser WHERE userid = $userid");
    if ($row = mysqli_fetch_assoc($select)) {
        $array[]=array('username'=>$row['username'],
                'photo'=>$row['userimage'],
                'id'=>$row['userid']
                
            );
    }
}
echo json_encode(array('data' => $array));
?>