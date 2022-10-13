<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Student Registration</title>
	<link rel="stylesheet" href="styles.css">
	<style>
.container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 100%;
  height: 1200px;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  
}

.container:hover .overlay {
  opacity: 1;
}

.new {
  
  position: absolute;
  top: 30%;
  left: 30%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}
</style>
</head>
<body>

<form method="POST" action="connect.php"> 
<div class="wrapper">
  <h3>Register Here</h3>
  
  <div class="form">
    <div class="input_field">
      <input type="text" placeholder="First Name" class="input" name="Fname">
    </div>
    <div class="input_field">
      <input type="text" placeholder="Last Name" class="input" name="Lname">
    </div>
    <div class="input_field">
      <input type="text" placeholder="Email" class="input" name="Email">
    </div>
    <div class="input_field">
      <input type="password" placeholder="Password" class="input" name="Student_password">
    </div>
    <div class="input_field">
      <input type="password" placeholder="Confirm Password" class="input" name="Student_cpassword">
    </div>
    <div class="input_field">
      <input type="text" placeholder="Username" class="input" name="Student_username">
    </div>
    <div class="input_field">
      <input type="text" placeholder="Contact Number" class="input" name="ContactNo">
    </div>
    <div class="input_field">
      <input type="text" placeholder="Date of Birth" class="input" name="DOB">
    </div>
    <div class="input_field">
      <input type="text" placeholder="Address" class="input" name="Address">
    </div>
    <div class="input_field">
      <input type="text" placeholder="School ID" class="input" name="School_ID">
    </div>
	<div class="input_field">
      <input type="text" placeholder="Parent ID" class="input" name="Parent_ID">
    </div>
	<div class="input_field">
      <input type="text" placeholder="Parent Name" class="input" name="Parent_Name">
    </div>
	<div class="input_field">
      <input type="text" placeholder="Parent ContactNo" class="input" name="Parent_ContactNo">
    </div>

    <div class="table">
	<p><b>Enter your O/L results</b></p>
        <table>
		<tr>
			<th align="left";>Buddhism &nbsp;: &nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="Buddhism_Result" value="A">A &nbsp; 
				<input type="radio" name="Buddhism_Result" value="B">B &nbsp;
				<input type="radio" name="Buddhism_Result" value="C">C &nbsp;
        <input type="radio" name="Buddhism_Result" value="S">S &nbsp;
  			<input type="radio" name="Buddhism_Result" value="W">W 
			</td>
		</tr>
		<tr>
			<th align="left";>Sinhala &nbsp;&nbsp;: &nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="Sinhala_Result" value="A">A &nbsp; 
				<input type="radio" name="Sinhala_Result" value="B">B &nbsp;
				<input type="radio" name="Sinhala_Result" value="C">C &nbsp;
        <input type="radio" name="Sinhala_Result" value="S">S &nbsp;
  			<input type="radio" name="Sinhala_Result" value="W">W 
			</td>
		</tr>
 		<tr>
			<th align="left";>Maths &nbsp;&nbsp;: &nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="Maths_Result" value="A">A &nbsp; 
				<input type="radio" name="Maths_Result" value="B">B &nbsp;
				<input type="radio" name="Maths_Result" value="C">C &nbsp;
        <input type="radio" name="Maths_Result" value="S">S &nbsp;
  			<input type="radio" name="Maths_Result" value="W">W 
			</td>
		</tr>
		<tr>
			<th align="left";>Science &nbsp;&nbsp;: &nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="Science_Result" value="A">A &nbsp; 
				<input type="radio" name="Science_Result" value="B">B &nbsp;
				<input type="radio" name="Science_Result" value="C">C &nbsp;
        <input type="radio" name="Science_Result" value="S">S &nbsp;
  			<input type="radio" name="Science_Result" value="W">W 
			</td>
		</tr>
		<tr>
			<th align="left";>English &nbsp;&nbsp;: &nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="English_Result" value="A">A &nbsp; 
				<input type="radio" name="English_Result" value="B">B &nbsp;
				<input type="radio" name="English_Result" value="C">C &nbsp;
        <input type="radio" name="English_Result" value="S">S &nbsp;
  			<input type="radio" name="English_Result" value="W">W 
		</td>
		</tr>
		<tr>
			<th align="left";>History &nbsp;&nbsp;: &nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="History_Result" value="A">A &nbsp; 
				<input type="radio" name="History_Result" value="B">B &nbsp;
				<input type="radio" name="History_Result" value="C">C &nbsp;
        			<input type="radio" name="History_Result" value="S">S &nbsp;
  				<input type="radio" name="History_Result" value="W">W 
		</td>
		</tr>
		<tr>
			<th align="left";>Bucket 1 :<br>(Tamil/Geography/<br>Commerce/Citizenship Education) &nbsp;&nbsp; </th>
		
			<td>
				<input type="radio" name="BucketSub1_Result" value="A">A &nbsp; 
				<input type="radio" name="BucketSub1_Result" value="B">B &nbsp;
				<input type="radio" name="BucketSub1_Result" value="C">C &nbsp;
       				<input type="radio" name="BucketSub1_Result" value="S">S &nbsp;
  				<input type="radio" name="BucketSub1_Result" value="W">W 
		</td>
		</tr>
		<tr>
			<th align="left";>Bucket 2 :<br>(Eastern music/Western Music/<br>Art/Dancing/<br>English Literature/Drama/<br>Sinhala Literature) &nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="BucketSub2_Result" value="A">A &nbsp; 
				<input type="radio" name="BucketSub2_Result" value="B">B &nbsp;
				<input type="radio" name="BucketSub2_Result" value="C">C &nbsp;
        			<input type="radio" name="BucketSub2_Result" value="S">S &nbsp;
  				<input type="radio" name="BucketSub2_Result" value="W">W 
		</td>
		</tr>
		<tr>
			<th align="left";>Bucket 3 :<br>(IT/Agriculture/Media Studies<br>Health/Home Science)&nbsp;&nbsp;</th>
		
			<td>
				<input type="radio" name="BucketSub3_Result" value="A">A &nbsp; 
				<input type="radio" name="BucketSub3_Result" value="B">B &nbsp;
				<input type="radio" name="BucketSub3_Result" value="C">C &nbsp;
        			<input type="radio" name="BucketSub3_Result" value="S">S &nbsp;
  				<input type="radio" name="BucketSub3_Result" value="W">W 
		</td>
		</tr>
		
	</table>
	<p><b>Choose your Stream:</b></p>
   	<table>
		<tr>
			
		
			<td>
				<input type="radio" name="Applied_Stream_ID" value="002">Bio-Science &nbsp; 
				<input type="radio" name="Applied_Stream_ID" value="001">Physical-Science &nbsp;
				<input type="radio" name="Applied_Stream_ID" value="004">Atrs &nbsp;
        <input type="radio" name="Applied_Stream_ID" value="003">Commerce &nbsp;
  				
		</td>
		</tr>
	</table>
    </div>
    <input class="btn" type="submit" name="submit" value="Register" >
  </div>
</div>
<div class="container">
  <img src="think.jpg" alt="Avatar" height="800" width="800" class="image">
  <div class="overlay">
    <div class="new"><img src="jobs.jpg" ></div>
  </div>
</div>
</form>
 


    

</body>
</html>