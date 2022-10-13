<?php
session_start();

require ("connect.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Post Assignments, Questions & References</title>
    <style>
        body{
            background-image: url("background.jpg");    
            background-size: cover;
            background-position: center;
        }
        input{
            width: 40%;
            height: 5%;
            border: 1px;
            border-radius: 05px;
            padding: 8px 15px 8px 15px;
            margin: 10px 0px 15px 0px;
            box-shadow: 1px 1px 2px 1px grey;
        }
    </style>
</head>

<body>
    <center>
    <h1>Post Assignments</h1>
        <form action="" method="POST">

            <input type="text" name="Subject_number" placeholder="Enter Subject Number"/> <br><br>
            <input type="text" name="Assignment_number" placeholder="Enter New Assignments"/> <br><br>

            <h1>Post Questions</h1>

            <input type="text" name="Subject_number" placeholder="Enter Subject Number"/> <br><br>
            <input type="text" name="Questions" placeholder="Enter New Questions"/> <br><br>

            <h1>Post References</h1>

            <input type="text" name="Subject_number" placeholder="Enter Subject Number"/> <br><br>
            <input type="text" name="Subject_References" placeholder="Enter New References"/> <br><br>

            <input type="submit" name="insert" value="INSERT DATA"/>
            
        </form>
    </center>
</body>