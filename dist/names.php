<?php
include("connect.php");
session_start();
$array = array();

$userid = $_SESSION['userid'];

if (isset($_POST['text'])) {
    $text = $_POST['text'];
    
    // Use prepared statements to prevent SQL injection
    $stmt = $conn->prepare("SELECT * FROM whatsappuser WHERE username LIKE ? AND userid != ?");
    $likeText = "$text";
    $stmt->bind_param("si", $likeText, $userid);
    $stmt->execute();
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()) {
        // Check if the user is friends or has sent/received a request
        $stmt2 = $conn->prepare("
            SELECT * FROM friendrequest 
            WHERE (senderid = ? AND requestid = ?) 
               OR (senderid = ? AND requestid = ?)
        ");
        $stmt2->bind_param("iiii", $userid, $row['userid'], $row['userid'], $userid);
        $stmt2->execute();
        $result2 = $stmt2->get_result();

        $isFriend = false;
        $friendRequestStatus = false;

        while ($row2 = $result2->fetch_assoc()) {
            if ($row2['accept'] == 'yes') {
                $isFriend = true;
                break;
            } else {
                $friendRequestStatus = true;
            }
        }

        if ($isFriend) {
            $array[] = array(
                'username' => $row['username'],
                'photo' => $row['userimage'],
                'id' => $row['userid'],
                'friends' => true,
                'friendsend' => false
            );
        } else {
            $array[] = array(
                'username' => $row['username'],
                'photo' => $row['userimage'],
                'id' => $row['userid'],
                'friends' => false,
                'friendsend' => $friendRequestStatus
            );
        }
    }

    $stmt->close();
    $stmt2->close();
}

echo json_encode(array('data' => $array));

?>
