<?php
    ob_start();
	session_start();
   if(!isset($_SESSION['user']))
   {                 
   header("location:user-login.php");exit;
   } 
require_once('includes/config.php');
$email=$_SESSION['user'];
$query_basic="SELECT * from user_signup where email='".$email."'";
$result_basic=$conn->query($query_basic);
$row_basic=$result_basic->fetch_assoc();
extract($row_basic);
$_SESSION['id']=$id;
$query="SELECT * from user_data where email='".$email."'";
$result=$conn->query($query);
$row=$result->fetch_assoc();
extract($row);
?>
<html>
<head>
    <title>User-signUp</title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.subject-btn{float:right;}
.modal {
    display: none; 
    position: fixed;
    z-index: 1; 
    padding-top: 100px;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0,0.5);
}
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}
.close-modal {color: #aaaaaa;float: right;
    font-size: 28px;font-weight: bold;}
.close-modal:hover,.close:focus {color: #000;cursor: pointer;
    text-decoration: none;}
</style>
</head>
<body>

	<div class="container" style="height:550px;">
	<div class="row">
        <div class="col-sm-9" ><h2>Dashboard</h2></div>
		<div class="col-sm-2" style="padding-top:28px;color:black;"><b><a href="index.php"><?php echo $name;?></a></b></div>
		<div class="col-sm-1" style="padding-top:20px"><a href="logout.php"><button class="btn btn-default">Log Out</button></a></div>
	</div>
	<hr>
<h4 >Your Subject</h4>
	<table class="table table-bordered">
<?php
if($c=="checked")
	echo '<tr><td>C </td><td><button class="btn btn-primary subject-btn " onclick="openModel('."'c'".')">Start Test</button></td>';
if($cpp=="checked")
	echo '<tr><td>KBC </td><td><button class="btn btn-primary subject-btn" onclick="openModel('."'cpp'".')">Start Test</button></td>';
if($java=="checked")
	echo '<tr><td>Puzzle </td><td><button class="btn btn-primary subject-btn" onclick="openModel('."'java'".')">Start Test</button></td></tr>';
?>
</table>	
    </div>
<div class="modal" >
  <div class="modal-content alert-warning">
  <a href="#" class="close-modal">&times;</a>
  <strong style="color:black">Warning!</strong><br>
  Once you start the test you will not able to quit until finishing the test.<br>
   Do  you want to continue?<hr>
   <button class="btn cancel-modal">Cancel</button>&emsp;
   <a href="user-quiz.php?subject=c"><button class="btn btn-primary">Start Test</button></a>
	</div>
</div>

<div class="modal" >
  <div class="modal-content alert-warning">
  <a href="#" class="close-modal">&times;</a>
  <strong style="color:black">Warning!</strong><br>
  Once you start the test you will not able to quit until finishing the test.<br>
   Do  you want to continue?<hr>
   <button class="btn cancel-modal">Cancel</button>&emsp;
   <a href="user-quiz.php?subject=cpp"><button class="btn btn-primary">Start Test</button></a>
	</div>
</div>
<div class="modal" >
  <div class="modal-content alert-warning">
  <a href="#" class="close-modal">&times;</a>
  <strong style="color:black">Warning!</strong><br>
  Once you start the test you will not able to quit until finishing the test.<br>
   Do  you want to continue?<hr>
   <button class="btn cancel-modal">Cancel</button>&emsp;
   <a href="sequenced-questions.php"><button class="btn btn-primary">Start Test</button></a>
	</div>
</div>
<noscript>
    <style>
        .container {display:none;}
    </style>
	<div style="height:520px;"><h3>Please Enable javascript, without javascript we can't afford to show content for you.</h3></div>
</noscript>

<div class="container-fluid footer" style="background-color:#111111;text-align:center;">
		<div style="display:table;;margin:0px auto;height:130px;color:#999999;">
			<div style="display:table-cell;vertical-align:middle;" >
<span style="font-size:14px;">We're currently taking on new projects. Would you like to disscuss yours?</span><br>
<span>&copy;&nbsp;Abhinav & Narendra&emsp;[+91 8387827918,+91 9529559201]</span><br>
<span>Powered by C Institute</span>
			</div>
		</div>
</div>

<script>
//openModel("c");
function openModel(sub){
//alert('fun call');
var i;if(sub=="c") i=0;if(sub=="cpp") i=1;if(sub=="java") i=2;
var modal = document.getElementsByClassName("modal")[i];
var btn = document.getElementsByClassName("subject-btn")[i];
var span = document.getElementsByClassName("close-modal")[i];
var cancel = document.getElementsByClassName("cancel-modal")[i];

modal.style.display = "block"; 
span.onclick = function() {
modal.style.display = "none";
}
cancel.onclick = function() {
modal.style.display = "none";
}
window.onclick = function(event) {
if (event.target == modal) {
   modal.style.display = "none";
    }
}
}
</script>


</body>
</html>