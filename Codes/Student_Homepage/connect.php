<?php



function getId ($Student_username){
    $conn = new mysqli('localhost', 'root', '', 'my_online_classroom');

if (!$conn) {
	echo "Connection failed!";
}


$sql = "SELECT * FROM Student WHERE Student_username='".$Student_username."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    return $row;
  }
} else {
  echo "0 results";
}
} 

 ?>