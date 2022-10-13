<?php


$conn = new mysqli('localhost', 'root', '', 'my_online_classroom');

if(isset($_POST['insert'])){

    $sql1 = "INSERT INTO Assignment(Subject_number,Assignment_number) VALUES ('$_POST[Subject_number]','$_POST[Assignment_number]')";
    $result1 = mysqli_query($conn, $sql1);

    if($result1)
    {
        echo '<script type="text/javascript"> alert("New Assignments Added") </script>';
    }

    else{
        echo '<script type="text/javascript"> alert("Assignments Could Not Be Added") </script>';
    }   

    $sql2 = "INSERT INTO Questions(Subject_number,Questions) VALUES ('$_POST[Subject_number]','$_POST[Questions]')";
    $result2 = mysqli_query($conn, $sql2);

    if($result2)
    {
        echo '<script type="text/javascript"> alert("New Questions Added") </script>';
    }

    else{
        echo '<script type="text/javascript"> alert("Questions Could Not Be Added") </script>';
    }  
    
    $sql3 = "INSERT INTO Subject_References(Subject_number,Subject_References) VALUES ('$_POST[Subject_number]','$_POST[Subject_References]')";
    $result3 = mysqli_query($conn, $sql3);

    if($result3)
    {
        echo '<script type="text/javascript"> alert("New References Added") </script>';
    }

    else{
        echo '<script type="text/javascript"> alert("References Could Not Be Added") </script>';
    }   

}




?>