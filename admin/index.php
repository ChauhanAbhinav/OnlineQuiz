<?php
	session_start();
   if(!isset($_SESSION['admin']))
   {  header("Location:/quiz/admin/admin-login.php");
   exit;}
?>
<html>
<head>
	<title> Admin panel
    </title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.subject-div{
height:270px;
}
.btn-sub{ 
height:100%;width:100%;
}
.btn-sub:hover{box-shadow:0 4px 10px 0 rgba(0,0,0,0.2),0 4px 20px 0 rgba(0,0,0,0.19);}
</style>
</head>
<body>
	<div class="container" style="height:550px;">
	<div class="row">
        <div class="col-sm-8" ><h2>Select Subject</h2></div>
		<div class="col-sm-2" style="padding-top:20px"><a href="../user-signup.php" class="btn btn-default">Register user</a></div>
		<div class="col-sm-1" style="padding-top:20px"><a href="logout.php" class="btn btn-default">Log Out</a></div>
	</div>
	<hr>
   <div class="row">
<a href="subject-questions.php?subject=c"><div class="col-sm-3 subject-div" ><button class="btn btn-default btn-sub">C</button></div></a>
<div class="col-sm-1"></div>
<a href="subject-questions.php?subject=cpp"><div class="col-sm-3 subject-div"><button class="btn btn-default btn-sub">KBC</button></div></a>
<div class="col-sm-1"></div>
<a href="subject-questions.php?subject=java"><div class="col-sm-3 subject-div"><button class="btn btn-default btn-sub">Puzzle</button></div></a>
	</div>
   </div>
   <div class="container-fluid footer" style="background-color:#111111;text-align:center;">
		<div style="display:table;;margin:0px auto;height:130px;color:#999999;">
			<div style="display:table-cell;vertical-align:middle;" >
<span style="font-size:14px;">We're currently taking on new projects. Would you like to disscuss yours?</span><br>
<span>&copy;&nbsp;Abhinav & Narendra&emsp;[+91 8387827918,+91 9529559201]</span><br>
<span>Powered by C Institute</span>
			</div>
		</div>
</div>
</body>
</html>