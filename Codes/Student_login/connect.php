<?php
session_start();


$conn = mysqli_connect('localhost', 'root', '', 'my_online_classroom');

if (!$conn) {
	echo "Connection failed!";
}



if(isset($_POST['submit'])){

    
    if(empty($_POST['Student_username']) || empty($_POST['Student_password'])){

        header ("location:index.php?Empty=Please Fill in the blanks");
    }

    else{
        $query = "SELECT * FROM Student WHERE Student_username='".$_POST['Student_username']."' AND Student_password='".$_POST['Student_password']."' ";
        $result = mysqli_query($conn, $query);
        if(mysqli_fetch_assoc($result)){
            $_SESSION ['User']=$_POST['Student_username'];
            header ("location:../Student_Homepage/index.php");
        }

        else{
            header("location:index.php?Invalid = Please enter correct username and password ");
        }
    }
}