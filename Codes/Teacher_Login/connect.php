<?php
session_start();


$conn = mysqli_connect('localhost', 'root', '', 'my_online_classroom');

if (!$conn) {
	echo "Connection failed!";
}



if(isset($_POST['submit1'])){

    
    if(empty($_POST['Teacher_username']) || empty($_POST['Teacher_password'])){

        header ("location:index.php?Empty=Please Fill in the blanks");
    }

    else{
        $query = "SELECT * FROM teacher, head_t WHERE teacher.teacher_ID = head_t.teacher_ID AND Teacher_username='".$_POST['Teacher_username']."' AND Teacher_password='".$_POST['Teacher_password']."' ";
        $result = mysqli_query($conn, $query);
        if(mysqli_fetch_assoc($result)){
            $_SESSION ['User']=$_POST['Teacher_username'];
            header ("location:../Head_T_Home/index.php");
        }

        else{
            header("location:index.php?Invalid = Please enter correct username and password ");
        }
    }
}

if(isset($_POST['submit2'])){

    
    if(empty($_POST['Teacher_username']) || empty($_POST['Teacher_password'])){

        header ("location:index.php?Empty=Please Fill in the blanks");
    }

    else{
        $query = "SELECT * FROM teacher, class_t WHERE teacher.teacher_ID = class_t.teacher_ID AND Teacher_username='".$_POST['Teacher_username']."' AND Teacher_password='".$_POST['Teacher_password']."' ";
        $result = mysqli_query($conn, $query);
        if(mysqli_fetch_assoc($result)){
            $_SESSION ['User']=$_POST['Teacher_username'];
            header ("location:../Class_T_Home/index.php");
        }

        else{
            header("location:index.php?Invalid = Please enter correct username and password ");
        }
    }
}


if(isset($_POST['submit3'])){

    
    if(empty($_POST['Teacher_username']) || empty($_POST['Teacher_password'])){

        header ("location:index.php?Empty=Please Fill in the blanks");
    }

    else{
        $query = "SELECT * FROM teacher, subject_t WHERE teacher.teacher_ID = subject_t.teacher_ID AND Teacher_username='".$_POST['Teacher_username']."' AND Teacher_password='".$_POST['Teacher_password']."' ";
        $result = mysqli_query($conn, $query);
        if(mysqli_fetch_assoc($result)){
            $_SESSION ['User']=$_POST['Teacher_username'];
            header ("location:../Subject_T_Home/index.php");
        }

        else{
            header("location:index.php?Invalid = Please enter correct username and password ");
        }
    }
}


