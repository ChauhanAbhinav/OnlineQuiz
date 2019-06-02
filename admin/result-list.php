<?php 
session_start();
ob_start();
?>
<html>
<head>
    <title>Result</title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
</style>
</head>
<body>
<?php
   if(!isset($_SESSION['admin']))
   {  header("Location:/quiz/admin/admin-login.php");
   exit;}
   
require_once('../includes/config.php');
extract($_GET);
if($subject=="c") $show_sub="C";
	else if($subject=="cpp") $show_sub="KBC";
		else $show_sub="Puzzle";
		
echo '<div class="container">';
echo '<h3>'.$show_sub.' Result</h3>';
echo '<table class="table table-striped table-hover table-bordered">';
$query_id="SELECT * FROM user_signup";
$result_id=$conn->query($query_id);
if($result_id->num_rows>0)
{	echo '<tr><th width="70">UId</th><th>Name</th>'; if($subject=="java") echo '<th>Time Consumed</th>'; 
	echo '<th>Marks</th></tr>';
	while($rows_id=$result_id->fetch_assoc())
	{	
		$query="SELECT c,cpp,java FROM user_data where email='".$rows_id['email']."'";
		$result=$conn->query($query);
		$row=$result->fetch_assoc();
		
		
		if($subject=='c') 
		{
			if($row['c']=='checked')
			{
				$table='_'.$rows_id['id'].'_c_result';
				$query_res="SELECT * FROM ".$table;
				$result_res=$conn->query($query_res);
				$r=0;$w=0;$total=0;
				while($row_res=$result_res->fetch_assoc())
				{ 
				if($row_res['is_right']==1) $r++;
				if($row_res['is_wrong']==1) $w++;
				}
					$total=$r*4-$w*1;
				echo '<tr><td>'.$rows_id['id'].'</td><td>'.$rows_id['name'].'</td><td>'.$total.'</td></tr>';
			}
		}
		else if($subject=='cpp')
				{	if($row['cpp']=='checked')
					{
					$table='_'.$rows_id['id'].'_cpp_result';
					$query_res="SELECT * FROM ".$table;
					$result_res=$conn->query($query_res);
					$r=0;$w=0;$total=0;
					while($row_res=$result_res->fetch_assoc())
					{ 
					if($row_res['is_right']==1) $r++;
					if($row_res['is_wrong']==1) $w++;
					}
					$total=$r*4-$w*1;
					echo '<tr><td>'.$rows_id['id'].'</td><td>'.$rows_id['name'].'</td><td>'.$total.'</td></tr>';
					}
				}
		
		else{ 
				if($row['java']=='checked')
				{ 
				$table='_'.$rows_id['id'].'_java_result';
				$query_res="SELECT * FROM ".$table;
				$result_res=$conn->query($query_res);
				$r=0;$w=0;$total=0;
				while($row_res=$result_res->fetch_assoc())
				{ 
				if(1)
				{$min=$row_res['min'];$sec=$row_res['sec'];}
				else { $min=0; $sec=0;}
				if($row_res['is_right']==1) $r++;
				if($row_res['is_wrong']==1) $w++;
				}
					$total=$r*4-$w*1;
				echo '<tr><td>'.$rows_id['id'].'</td><td>'.$rows_id['name']."</td><td> $min min $sec sec</td><td>".$total.'</td></tr>';
				}
			}
	
	}
}
else
{
	echo "No result data";
}
echo "</table></div>";

?>
<br>
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
