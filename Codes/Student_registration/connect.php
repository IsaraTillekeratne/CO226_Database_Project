<?php
session_start();


$conn = mysqli_connect('localhost', 'root', '', 'my_online_classroom');

if (!$conn) {
	echo "Connection failed!";
}


if(isset($_POST['submit'])){


  function validate($data){
    $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

  $fname = validate($_POST['Fname']);
  $lname = validate($_POST['Lname']);
  $email = validate($_POST['Email']);
	$pass = validate($_POST['Student_password']);
	$re_pass = validate($_POST['Student_cpassword']);
  $uname = validate($_POST['Student_username']);
  $contact = validate($_POST['ContactNo']);
  $dob = validate($_POST['DOB']);
  $address = validate($_POST['Address']);
  $schoolid = validate($_POST['School_ID']);
  $parentid = validate($_POST['Parent_ID']);
  $parentName = validate($_POST['Parent_Name']);
  $parentContactNo = validate($_POST['Parent_ContactNo']);
  $buddhismResult = validate ($_POST['Buddhism_Result']);
  $sinhalaResult = validate ($_POST['Sinhala_Result']);
  $mathsResult = validate ($_POST['Maths_Result']);
  $scienceResult = validate ($_POST['Science_Result']);
  $englishResult = validate ($_POST['English_Result']);
  $historyResult = validate ($_POST['History_Result']);
  $bucket1Result = validate ($_POST['BucketSub1_Result']);
  $bucket2Result = validate ($_POST['BucketSub2_Result']);
  $bucket3Result = validate ($_POST['BucketSub3_Result']);
  $streamID = validate ($_POST ['Applied_Stream_ID']);


	if (empty($fname)) {
		header("Location: index.php?error=First Name is required");
      exit();
      
  }

  else if (empty($lname)){
    header("Location: index.php?error=Last Name is required");
  exit();
  }

  else if(empty($email)){
    header("Location: index.php?error=Email is required");
  exit();
  }

  else if(empty($pass)){
        header("Location: index.php?error=Password is required");
	    exit();
  }
  
	else if(empty($re_pass)){
        header("Location: index.php?error=Confirm Password is required");
	    exit();
	}

	else if(empty($uname)){
        header("Location: index.php?error=Username is required");
	    exit();
	}

	else if($pass !== $re_pass){
        header("Location: index.php?error=The confirmation password  does not match");
	    exit();
	}

  else if(empty($contact)){
    header("Location: index.php?error=Contact Number is required");
  exit();
  }

  else if(empty($dob)){
    header("Location: index.php?error=Date of Birth is required");
  exit();
  }

  else if(empty($address)){
    header("Location: index.php?error=Address of Birth is required");
  exit();
  }

  else if(empty($schoolid)){
    header("Location: index.php?error=School_ID is required");
  exit();
  }

  else if(empty($parentid)){
    header("Location: index.php?error=Parent_ID is required");
  exit();
  }

  else if(empty($parentName)){
    header("Location: index.php?error=Parent_Name is required");
  exit();
  }

  else if(empty($parentContactNo)){
    header("Location: index.php?error=Parent_ContactNo is required");
  exit();
  }

  else if(empty($buddhismResult)){
    header("Location: index.php?error=Buddhism Result is required");
  exit();
  }

  else if(empty($sinhalaResult)){
    header("Location: index.php?error=Sinhala Result is required");
  exit();
  }

  else if(empty($mathsResult)){
    header("Location: index.php?error=Maths Result is required");
  exit();
  }

  else if(empty($scienceResult)){
    header("Location: index.php?error=Science Result is required");
  exit();
  }

  else if(empty($englishResult)){
    header("Location: index.php?error=English Result is required");
  exit();
  }

  else if(empty($historyResult)){
    header("Location: index.php?error=History Result is required");
  exit();
  }

  else if(empty($bucket1Result)){
    header("Location: index.php?error=Bucket 1 Result is required");
  exit();
  }

  else if(empty($bucket2Result)){
    header("Location: index.php?error=Bucket 2 Result is required");
  exit();
  }

  else if(empty($bucket3Result)){
    header("Location: index.php?error=Bucket 3 Result is required");
  exit();
  }

  else if(empty($streamID)){
    header("Location: index.php?error=Applied Stream ID is required");
  exit();
  }


	else{

	  $sql = "SELECT * FROM Student WHERE Student_username='$uname' ";
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {
			header("Location: index.php?error=The username is taken try another");
	        exit();
		}else {
           $sql3 = "INSERT INTO Parent(Parent_ID,Parent_name,Parent_ContactNo) VALUES ('$parentid','$parentName','$parentContactNo')";
           $sql2 = "INSERT INTO Student(Fname, Lname, Email, Student_password, Student_username, ContactNo, DOB, Address, School_ID, Buddhism_Result, Sinhala_Result, Maths_Result, Science_Result, English_Result, History_Result,BucketSub1_Result,BucketSub2_Result,BucketSub3_Result ,Applied_Stream_ID) VALUES('$fname', '$lname', '$email', '$pass', '$uname', '$contact', '$dob', '$address', '$schoolid', '$buddhismResult', '$sinhalaResult', '$mathsResult', '$scienceResult', '$englishResult', '$historyResult','$bucket1Result','$bucket2Result','$bucket3Result','$streamID')";
           

           $result2 = mysqli_query($conn, $sql2);
           $result3 = mysqli_query($conn, $sql3);

           if ($result2&&$result3) {
           	 header("Location: index.php?success=Your account has been created successfully");
	         exit();
           }else {
               header("Location: index.php?error=unknown error occurred");
		        exit();
           }
		}
	}
	
}
else{
	header("Location: index.php");
	exit();
}