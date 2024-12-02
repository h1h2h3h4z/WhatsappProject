<?php
include("connect.php");
session_start();

// Get the user ID from the session
$userid = $_SESSION['userid'];
$receverid=$_POST['receverid'];
// Prepare the SQL query to prevent SQL injection
$query = "SELECT * FROM messages WHERE (receverid = ? AND senderid = ?) OR (receverid = ? AND senderid = ?) ORDER BY dateofsend ASC";
$stmt = $conn->prepare($query);
$stmt->bind_param("iiii", $userid, $receverid,$receverid ,$userid);
$stmt->execute();
$result = $stmt->get_result();

// Initialize the array to store messages
$array = array();

// Fetch messages and process them
while ($row = $result->fetch_assoc()) {
    if ($row['receverid'] == $userid) {
        $array[] = array(
            'messages' => $row['textmessage'],
            'align' => 'left'
        );
    }
    
    if ($row['senderid'] == $userid) {
        $array[] = array(
            'messages' => $row['textmessage'],
            'align' => 'right'
        );
    }
}

// Encode the array into JSON and output it
echo json_encode(array('data' => $array));

// Close the prepared statement and connection
$stmt->close();
$conn->close();
?>
