<?php
session_start();
require ("connect.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Head Teacher Home</title>
	<link rel="stylesheet" href="styles_headT.css">
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
        <img src="new_h.jpg" 
        alt="user" width="300">
        <h1><?php echo isset($usersData['Teacher_name']) ? $usersData['Teacher_name'] : ''; ?></h1>
         <p>Arts Stream</p>
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
	    <div class="btn"><a href="Update/index.php">EDIT PERSONAL INFO</a></div>
        </div>
      
      <div class="projects">
            <h2>Stream Information</h2>
            <div class="projects_data">
                 <div class="data">
                    <h3>Class</h3>
                    <p>12A-1</p>
                    <p>12A-2</p>
                    <p>12A-3</p>
                    <p>12A-4</p>
                    <p>12A-5</p>
                 </div>
                 <div class="data">
                   <h3>Class Teacher</h3>
                    <p>Mrs. Ramani Fernando</p>
                    <p>Mrs. Damayanthi Silva</p>
                    <p>Mr. Nirmal Perera</p>
                    <p>Mr. Roy Fernando</p>
                    <p>Mrs. Renuka Herath</p>
              </div>
              <div class="data">
                <h3>Email</h3>
                 <p>ramani@gmail.com</p>
                 <p>damayanthi@gmail.com</p>
                 <p>nirmal@gmail.com</p>
                 <p>roy@gmail.com</p>
                 <p>renuka@gmail.com</p>
           </div>

            </div>
            <div class="btn"><a href="#">EDIT CLASSES</a></div>
        </div>
        </div>  
    </div>
</div>

</body>
</html>