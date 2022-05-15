<!DOCTYPE HTML>
<html>
	<head>
		<title>Student Records</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="/style/style.css">
	</head>
	<body>
		<center>
			<h1>Welcome to Online Student Records Directory</h1>

			<div class="catalogue">


 <?php
  $host='localhost';
  $user= 'root';
  $pass='';
  $db='students';

  $conn= new mysqli($host, $user, $pass, $db) or die ("Failed to Connect to DB: %s\n". $conn -> error);

  $sql = "SELECT * FROM `records`";
  $query = $conn->query($sql);
  while($result = $query -> fetch_array(MYSQLI_ASSOC))
  {
	    $file_name = $result['STUDENT_ID'] . ".png";
	    $STUDENT_ID = "STUDENT_ID: " . $result['STUDENT_ID'];
		$STUDENT_NAME = $result['STUDENT_NAME'];
		$MODULE_ID =  $result['MODULE_ID'];
		$MODULE_NAME =  $result['MODULE_NAME'];
		$MODULE_LEADER = "MODULE LEADER: " . $result['MODULE_LEADER'];
		$MODULE_GRADE = "MODULE GRADE: " . $result['MODULE_GRADE'];
		
	 echo('<div class="student-card">
		<div class="card" style="background:url('. '\'/images/' . $file_name . '\');background-size: cover;background-repeat: no-repeat;">
	  </div>
	  
	  <h1>' . $STUDENT_NAME . '</h1>
	  <h3>' . $MODULE_ID . ' ' .$MODULE_NAME .' </h3>
	  <h4>' . $MODULE_GRADE . ' %</h4>
	  </div>	');
		
		
		
		
		
  }?>

		

</div>
	</body>
</html>
