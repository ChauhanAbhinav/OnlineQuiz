<?php
    session_start();
    ob_start();
?>
<html>
<head>
    <title>User Login</title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
*{margin:0px;}
body{background-color:;height:100%;}
</style>
	</head>
<body>
<?php
if(isset($_POST['submit']))
{ extract($_POST);
   require_once('includes/config.php');
  $query="SELECT * FROM user_signup";
	if(($result=$conn->query($query)))
	{
		if($result->num_rows>0)
		 {  $n=0;
		 	while($rows=$result->fetch_assoc()) 
		    { 
			  if($rows['email']==$email)  
			     {$n++; }
			}
			if($n>0)
				{ 
				 $query2="SELECT passwd FROM user_signup WHERE email='".$email."'";
				 $result2=$conn->query($query2);
				 $rows2=$result2->fetch_assoc();
					if($rows2['passwd']==$password)
				 	{ 
					 $_SESSION['user']=$email;
					 header("location:index.php");
					 }
					else echo  '<div class="fluid"><div class="alert alert-danger alert-dismissible">
								<strong>Failed! </strong>Please enter correct password.</div></div>';
				}
				else echo  '<div class="fluid"><div class="alert alert-danger alert-dismissible">
							<strong>Failed! </strong>Please enter correct email.</div></div>';
		 }
		 else echo  '<div class="fluid"><div class="alert alert-danger alert-dismissible">
					No user is created at this time, Please create a account first.</div></div>';
	}
}
?>
  <div class="container" style="height:550px;" >
  
    <div class="row" style="margin-top:80px;">
      <div class="col-sm-4"></div>
       <div class="col-sm-4" style="background-color:;border:solid 1px #dddddd;border-radius:3px;">
	    <div class="form_bg"><br>
            <form action="user-login.php" method="post">
               <h2 class="text-center">User Login</h2><br><hr>
               <label>Email</label>
			   <div class="form-group">
                   <input type="email" class="form-control" placeholder="Email" name="email" value="<?php if(isset($email)) echo $email; ?>" required>
               </div>
			   <label>Password</label>
               <div class="form-group">
                   <input type="password" class="form-control"placeholder="Password" name="password" required>
               </div><br>
               
                   <button type="submit" class="btn btn-primary" name="submit" >Login</button>
				   <!-- &emsp;<a href="user-signup.php" class="btn btn-primary">Sign Up</a> -->  
				 </form>
				 <br>
       </div>        
    </div>
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