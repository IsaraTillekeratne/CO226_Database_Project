<?php


$conn = new mysqli('localhost', 'root', '', 'my_online_classroom');

if(isset($_POST['update'])){

    $id = $_POST['Teacher_ID'];
    $query = "UPDATE `Teacher` SET address='$_POST[address]', teacher_contactNo='$_POST[teacher_contactNo]', email='$_POST[email]' WHERE Teacher_ID='$_POST[Teacher_ID]'";
    $query_run = mysqli_query($conn,$query);

    if($query_run)
    {
        echo '<script type="text/javascript"> alert("Data Updated") </script>';
    }

    else{
        echo '<script type="text/javascript"> alert("Data Not Updated") </script>';
    }
}


?>