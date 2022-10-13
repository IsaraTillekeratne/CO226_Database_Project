<?php
session_start();

require ("connect.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Student - Home Page</title>
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
        <img src="student.jpg" 
        alt="user" width="300">
        <h1> <?php echo isset($usersData['Fname']) ? $usersData['Fname'] : ''; ?> </h1>
         <p>12M-1</p>
    </div>
    <div class="right">
        <div class="info">
            <h2>Student Information</h2>
            <div class="info_data">
                 <div class="data">
                    <h3>DOB</h3>
                    <p><?php echo isset($usersData['DOB']) ? $usersData['DOB'] : ''; ?></p>
                 </div>
                 <div class="data">
                   <h3>Address</h3>
                    <p><?php echo isset($usersData['Address']) ? $usersData['Address'] : ''; ?></p>
             	 </div>
		 <div class="data">
                    <h3>Contact</h3>
                    <p><?php echo isset($usersData['ContactNo']) ? $usersData['ContactNo'] : ''; ?></p>
                 </div>
		<div class="data">
                    <h3>Email</h3>
                    <p><?php echo isset($usersData['Email']) ? $usersData['Email'] : ''; ?></p>
                 </div>
		<div class="data">
                    <h3>Username</h3>
                    <p> <?php echo ($_SESSION['User']) ?></p>
                 </div>
            </div>
	    <div class="btn"><a href="Update/index.php">EDIT STUDENT INFO</a></div>
        </div>
      
      <div class="projects">
            <h2>Lecture Hours</h2>
            <div class="projects_data">
		<div class="data">
                    <h3>Subject</h3>
                    <p>Physics</p>
		</div>
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

	<div class="meetings">
            <h2>Parents' Meetings</h2>
            <div class="meetings_data">
		<div class="data">
                    <h3><a href="url">Click here to join meeting</a><h3>
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
	<ol>
		<li><h2>Combined Mathematics</h2>
			<ul>
			<li>Assignment 1</li>
			<li>Assignment 2</li>
			</ul>
		</li>

		<li><h2>Chemistry</h2>
			<ul>
			<li>Assignment 1</li>
			<li>Assignment 2</li>
			</ul>
		</li>
	</ol>
	
    </div>
    <div class="blank">
    </div>
    <div class="middle">
	<img src="questions.jpg" 
        alt="user" width="100">
	<h1>Questions</h1>
	<ol>
		<li><h2>Combined Mathematics</h2>
			<ul>
			<li>Question 1</li>
			</ul>
		</li>
		<li><h2>Physics</h2>
			<ul>
			<li>Question 1</li>
			</ul>
		</li>
	</ol>

    </div>
    <div class="blank">
    </div>
    <div class="right_new">
	<img src="references.png" 
        alt="user" width="100">
	<h1>References</h1>
	<ol>
		<li><h2>Combined Mathematics</h2>
			<ul>
			<li><p><a href="url">Reference Link 1</a></p></li>
			</ul>
		</li>

		<li><h2>Physics</h2>
			<ul>
			<li><p><a href="url">Reference Link 1</a></p></li>
			</ul>
		</li>

	</ol>
    </div>
</div>
</body>
</html>


