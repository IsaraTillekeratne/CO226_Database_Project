<?php
session_start();
require ("connect.php");
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Class Teacher Home</title>
	<link rel="stylesheet" href="styles_classT.css">
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
        <img src="new_class.jpg" 
        alt="user" width="300">
        <h1><?php echo isset($usersData['Teacher_name']) ? $usersData['Teacher_name'] : ''; ?></h1>
        <p>12A-1</p>
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
            <h2>Class Information</h2>
            <div class="projects_data">
                 <div class="data">
                    <h3>Student Name</h3>
                    <p>Akila Lakshan</p>
                    <p>Nuwan Pamuditha</p>
                    <p>Renul Rathnayake</p>
                    <p>Isuri Pabasara</p>
                    <p>Nayani Perera</p>
                 </div>

                 <div class="data">
                  <h3>Student Email</h3>
                  <p>akila@gmail.com</p>
                  <p>nuwan@gmail.com</p>
                  <p>renul@gmail.com</p>
                  <p>isuri@gmail.com</p>
                  <p>nayani@gmail.com</p>
                  </div>

                 <div class="data">
                   <h3>Parent Name</h3>
                    <p>Ranil Fernando</p>
                    <p>Nelum Silva</p>
                    <p>Nayomi Perera</p>
                    <p>Hiral Fernando</p>
                    <p>Kamal Herath</p>
                  </div>
                  <div class="data">
                    <h3>Contact No</h3>
                    <p>0777345628</p>
                    <p>0777653425</p>
                    <p>0756456876</p>
                    <p>0753095634</p>
                    <p>0713452789</p>
                 </div>
            </div>
            
        </div> 
        
        <div class="projects">
          <h2>PARENTS' MEETINGS</h2>
          <div class="projects_data">
               <div class="data">
                  <a href = "www.zoom.lk" target = "_blank"><h3>Click here to join meeting</h3></a>
                  
               </div>
               
          </div>
          
        </div> 
        
        <div class="btn"><a href="#">POST A NEW LINK</a></div>
        </div>
    </div>
</div>

</body>
</html>