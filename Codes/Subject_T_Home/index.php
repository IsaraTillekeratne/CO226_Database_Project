<?php
session_start();
require ("connect.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Subject Teacher Home Page</title>
	<link rel="stylesheet" href="styles.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</head>
<body>

<?php 
if(isset ($_SESSION['User'])){
     $usersData = getId ($_SESSION ['User']);
} else {
    $usersData = array();
}
?>
<div class="wrapper">
    <div class="left">
        <img src="online.jpg" 
        alt="user" width="300">
        <h1><?php echo isset($usersData['Teacher_name']) ? $usersData['Teacher_name'] : ''; ?></h1>
         <p>Physics</p>
    </div>
    <div class="right">
        <div class="info">
            <h2>Personal Information</h2>
            <div class="info_data">
                 <div class="data">
                    <h3>Email</h3>
                    <p><?php echo isset($usersData['email']) ? $usersData['email'] : ''; ?></p>
                 </div>
                 <div class="data">
                   <h3>Phone</h3>
                    <p><?php echo isset($usersData['teacher_contactNo']) ? $usersData['teacher_contactNo'] : ''; ?></p>
             	 </div>
		 <div class="data">
                    <h3>Address</h3>
                    <p><?php echo isset($usersData['address']) ? $usersData['address'] : ''; ?></p>
                 </div>
            </div>
	    <div class="btn"><a href="Update/index.php">EDIT</a></div>
        </div>
      
      <div class="projects">
            <h2>Lecture Hours</h2>
            <div class="projects_data">
                 <div class="data">
                    <h3>Date</h3>
                    <p>Monday</p>
                 </div>
                 <div class="data">
                   <h3>Time</h3>
                    <p>8.00-10.00 a.m</p>
              </div>
            </div>
        </div>
      
        
    </div>
</div>
<div class="wrapper_new">
    <div class="left_new">
	<img src="assignment.png" 
        alt="user" width="100">
	<h1>Assignments</h1>
	<ul>
		<li>Assignment 1</li>
		<li>Assignment 2</li>
	</ul>
	<div class="btn"><a href="Post/index.php" target="_blank">ADD</a></div>
    </div>
    <div class="blank">
    </div>
    <div class="middle">
	<img src="questions.jpg" 
        alt="user" width="100">
	<h1>Questions</h1>
	<ul>
		<li>Question 1</li>
		<li>Question 2</li>
	</ul>
	<div class="btn"><a href="Post/index.php" target="_blank">ADD</a></div>
    </div>
    <div class="blank">
    </div>
    <div class="right_new">
	<img src="references.png" 
        alt="user" width="100">
	<h1>References</h1>
	<ul>
		<li>Reference Link 1</li>
		<li>Reference Link 2</li>
	</ul>
	<div class="btn"><a href="Post/index.php" target="_blank">ADD</a></div>
    </div>
</div>
</body>
</html>