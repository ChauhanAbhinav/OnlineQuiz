<?php
	session_start();
   if(!isset($_SESSION['user']))
   {  header("Location:user-login.php");
   exit;} 

require_once('includes/config.php');
extract($_GET);extract($_SESSION);
$subject=$_SESSION['subject'];

$query_sub="select * from ".$_SESSION['subject'];
	$result_sub=$conn->query($query_sub);
    $t_rows=$result_sub->num_rows;
	
$table="_".$id."_".$subject."_result"; 
$query="SELECT * FROM ".$table;
$result=$conn->query($query);
$r=0;$w=0;$na=0;$total_ques=0;$total=0;
$total_ques=$result->num_rows;
while($row=$result->fetch_assoc())
{ 
	if($row['is_right']==1) $r++;
	if($row['is_wrong']==1) $w++;
	if($row['not_attempt']==1) $na++;
}

$total=$r*4-$w*1;
$attempt=$r+$w;
if($subject=="c") $show_sub="C";
else if($subject=="cpp") $show_sub="KBC";
		else $show_sub="Puzzle";
		
if($subject=="java")
{
	$query_time="SELECT min, sec FROM ".$table;
	$result_time=$conn->query($query_time);
	while($row_time=$result_time->fetch_assoc())
	{
		$min=$row_time['min'];$sec=$row_time['sec'];
		
	}	
}
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
</style>
</head>
<body>
<div class="container" style="height:550px;">
   <br><br><br>
   <div class="col-sm-6 col-sm-offset-3" style="border:1px solid #dddddd;border-radius:2px;">
        
		<h2><?php print $show_sub."&nbsp;Result" ?></h2><hr>
        <table class="table table-stripped table-hover table-bordered">
		    <tr><td><?php echo "total no of questions" ?></td><td><?php print "&emsp;".$t_rows; ?></td></tr>
            <tr><td><?php echo "total no of questions attempted" ?></td><td><?php print "&emsp;".$attempt;?></td></tr>
			<tr><td><?php echo "No of right questions" ?></td><td><?php  print "&emsp;".$r; ?></td></tr>
            <tr><td><?php echo "No of wrong questions" ?></td><td><?php print "&emsp;".$w ?></td></tr>
            <tr><td><?php echo "Earned Marks" ?></td><td><?php print "&emsp;".$total ?></td></tr>
			<?php if($subject=="java") echo "<tr><td>Time consumed</td><td>&emsp; $min min $sec sec </td></tr> "; ?>
		</table>
		<div align="right">
		<a href="index.php"><button class="btn btn-primary">Home</button></a>&nbsp;&nbsp;
		<a href="logout.php"><button class="btn btn-default">Logout</button></a><br><br>
		</div>
	</div>
<div class="col-sm-6 col-sm-offset-3">
<strong>Note: </strong>To see the result in future of any subject just start the test again.</div>
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