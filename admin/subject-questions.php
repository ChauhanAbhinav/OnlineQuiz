<?php 
	session_start();
   if(!isset($_SESSION['admin']))
   {  header("Location:/quiz/admin/admin-login.php");
   exit;}
	extract($_GET) ;
	require_once('../includes/config.php');
	if($subject=="c") $show_sub="C";
	else if($subject=="cpp") $show_sub="KBC";
		else $show_sub="Puzzle";
?>
<html>
<head>
    <title><?php echo $show_sub; ?></title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
</style>
</head>
<body>
<div class="container" >
<div class="row">
        <div class="col-sm-8" ><h2>Subject : <?php echo $show_sub ?></h2></div>
		<div class="col-sm-1" style="padding-top:20px"><a href="index.php" class="btn btn-default">Home</a></div>
		<div class="col-sm-1" style="padding-top:20px"><a href="result-list.php?subject=<?php echo $subject ?>" class="btn btn-default">Result</a></div>
		<div class="col-sm-2" style="padding-top:20px"><a href="add-question.php?subject=<?php echo $subject ?>&action=add" class="btn btn-default">Add question</a></div>
		
</div>
<hr>
<?php
$query="select * from $subject ";
$result=$conn->query($query);
if($result->num_rows > 0)
	{	echo '<table class="table table-bordered table-striped table-hover"><tr><th>Qid</th><th>Question</th><th>Action</th></tr>' ;
		while($rows=$result->fetch_assoc())
		{ 
		echo '<tr><td width="50">'.$rows['qid'].'.</td>';
		$str=substr($rows['question'],0,80);
		if(strlen($str)>=80) $str=$str.'.....';
		echo '<td>'.$str.'</td>
		<td width="70" ><a href="update-question.php?subject='.$subject.'&qid='.$rows['qid'].'&action=edit">Edit</a></td></tr>';
		}
		echo '</table>';
	}
else
	{
		echo "<b>No question found here</b>";
	}
?>
</div>

</body>
<html>
   