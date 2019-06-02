<?php 
session_start();
if(!isset($_SESSION['admin']))
{header('Location:admin/admin-login.php');
exit;}
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
.error{color:red;display:none;}
</style>
<script>
		function checkDetails(form){
			var error=0;
			var pass=document.getElementById("passwd").value;
			var pass2=document.getElementById("passwd2").value;
			if(form.c.checked==false&&form.cpp.checked==false&&form.java.checked==false)
			{	document.getElementById("error_sub").style.display="inline";error+=1;}
			if(pass!=pass2)
			{	document.getElementById("error_cp").style.display="inline";error+=1;}
	if(error!=0)
		return false;
	else 
		return true;
		}	
</script>	
	</head>

<body>
  <div class="container">
  <br>
  <div class="row">
     
       <div class="col-sm-6 col-sm-offset-3" style="border:solid 1px #dddddd;border-radius:3px;">
	    <div class="form_bg">
            <form action="create-user.php" method="post">
               <h2 class="text-center">User Registration</h2><hr>
               <div class="form-group">
                   <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email"  required>
               </div>
               <div class="form-group">
                   <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name" required>
               </div>
               <div class="form-group">
                   <input type="number" min="7000000000" max="9999999999" class="form-control" id="phone" placeholder="Contact Number" name="phone" required>
               </div>
			   <div class="form-group">
                   <label>Select College</label>
                   <select class="form-control"name="college" >
                   <option>Govt.College of Engineering & Technology,Bikaner</option>
                   	<option>Govt.Engineering College,Bikaner</option>
                   	<option>Others</option>
                   </select>
               </div>
               <div class="form-group">
                   <label>Semester</label>
                   <select class="form-control" name="semester" >
                   	<option value="1">I</option>
                   	<option value="2">II</option>
                   	<option value="3">III</option>
                   	<option value="4">IV</option>
                   	<option value="5">V</option>
                   	<option value="6">VI</option>
                   	<option value="7">VII</option>
                   	<option value="8">VIII</option>
                   </select>
               </div>
               <label>Select Participation</label>
               <div class="form-group">
                   C&nbsp;<input type="checkbox" id="c" name="c" value="checked">
					&emsp;
                   KBC&nbsp;<input type="checkbox"  id="cpp" name="cpp" value="checked">
                  &emsp;
                   Puzzle&nbsp;<input type="checkbox"  id="java" name="java" value="checked">
				   &emsp;<span class="error" id="error_sub">Please select at least one subject</span>
               </div>
               <div class="form-group">
                   <label>Branch</label>
                   <select class="form-control" name="branch" >
                   	<option>CSE</option>
                   	<option>ECE</option>
                   	<option>EE</option>
                   	<option>ME</option>
                   	<option>CE</option>
                   	<option>CR</option>
                   	</select>
			</div> 
               <div class="form-group">
                   <input type="password" class="form-control" id="passwd" placeholder="Password" name="password" required>
               </div>
               <div class="form-group">
                   <input type="password" class="form-control" id="passwd2" placeholder="Conform Password" required>
				   <span class="error" id="error_cp">Confirm password did not match</span>
               </div>
               <div class="align-center">
                   <input type="submit" class="btn btn-primary"  name="submit" value="submit"  onclick=" return checkDetails(this.form)">
               </div>
            </form>
       </div>        
    </div>
   
   </div>
   <br>
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
</body>
</html>