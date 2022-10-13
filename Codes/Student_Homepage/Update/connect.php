<?php


$conn = new mysqli('localhost', 'root', '', 'my_online_classroom');

if(isset($_POST['update'])){

    $id = $_POST['School_ID'];
    $query = "UPDATE `Student` SET DOB='$_POST[DOB]', Address='$_POST[Address]', ContactNo='$_POST[ContactNo]', Email='$_POST[Email]' WHERE School_ID='$_POST[School_ID]'";
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