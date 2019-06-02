<?php 
session_start();
ob_start();
?>
<html>
<head>
    <title>Create user</title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<?php
if(!isset($_POST['submit']))
{header('Location:user-signup.php'); exit;
}
//exit;
require_once('includes/config.php');
extract($_POST);
if(!isset($c)) $c="";if(!isset($cpp)) $cpp="";if(!isset($java)) $java="";

$stmt1=$conn->prepare("INSERT INTO user_signup(email,name,phone,passwd) values(?,?,?,?)");
$stmt1->bind_param("ssis",$email,$name,$phone,$password);
if($stmt1->execute())
	{	
	    $_SESSION['user']=$email;
		$stmt2=$conn->prepare("INSERT INTO user_data(email,sem,branch,college,c,cpp,java) values(?,?,?,?,?,?,?)");
		$stmt2->bind_param("sisssss",$email,$semester,$branch,$college,$c,$cpp,$java);
			if($stmt2->execute())
			{//echo "1 and 2 query executed successfully "; 
			$query_uid="SELECT id FROM user_signup where email='".$email."'";
			$result=$conn->query($query_uid);
			$row=$result->fetch_assoc();
			$id=$row['id'];
			$table1="_".$id."_c_result";$table2="_".$id."_cpp_result";$table3="_".$id."_java_result";
			if($c=="checked")
			{$query1="create table $table1 (qid int(11) PRIMARY KEY ,not_attempt int(1),is_right int(1), is_wrong int(1));";
			$conn->query($query1);}
	
			if($cpp=="checked")
			{$query2="create table $table2 (qid int(11) PRIMARY KEY ,not_attempt int(1),is_right int(1), is_wrong int(1));";
			$conn->query($query2);}
	
			if($java=="checked")
			{$query3="create table $table3 (qid int(11) PRIMARY KEY ,not_attempt int(1),is_right int(1), is_wrong int(1),min int(3), sec int(2));";
			$conn->query($query3);}
			header("Location:index.php");
			}	
			else echo '<b>User registered successfully, but some details are lost due to server error!. Contact your Administrator.<br>Go to <a href="index.php">Dashboard</a></b>';
	}	
	else
		echo  '<div class="fluid"><div class="alert alert-danger alert-dismissible">
		<strong>Failed! </strong>User already created with this email or phone.Email and Phone must be unique for every user.Try using different email and phone.</div></div>';
		
?>
</body>
</html>