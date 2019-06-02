<?php
session_start();
ob_start();
?>
<html>
<head>
    <title>Admin-signUp</title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<?php
if(isset($_POST['submit']))
{ extract($_POST);
   if($userid=="quiz"&&$password=="123")
	{ 	$_SESSION['admin']=$userid;
		   header('location:/quiz/admin/index.php');
	}	
}
?>
<br>
  <div class="container" style="height:550px;" >
    <!--<h1>Admin SignUp</h1>-->
    <div class="row" style="margin-top:80px;">
      <div class="col-sm-4"></div>
       <div class="col-sm-4" style="background-color:;border:solid 1px #dddddd;border-radius:3px;">
	    <div class="form_bg"><br>
            <form action="admin-login.php" method="post">
               <h2 class="text-center">Admin Login Panel</h2><br><hr>
               <div class="form-group">
                   <input type="text" class="form-control" id="userid" placeholder="User Id" name="userid" value="<?php if(isset($userid)) echo $userid; ?>">
               </div><br>
               <div class="form-group">
                   <input type="password" class="form-control" id="passwd" placeholder="Password" name="password">
               </div><br>
               <div class="align-center">
                   <button type="submit" class="btn btn-default" id="login" name="submit">Login</button>
               </div>
            </form>
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