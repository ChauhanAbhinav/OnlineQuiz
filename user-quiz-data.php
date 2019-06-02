<?php
  session_start();
 if(!isset($_SESSION['user'])) 
 {
	 header('location:user-login.php'); exit;
 }
	require_once("includes/config.php");
	extract($_POST);
	extract($_GET);
	if(isset($subject)) $_SESSION['subject']=$subject;
	$id=$_SESSION['id'];
	$table="_".$id."_".$_SESSION['subject']."_result";
	$query_qid="SELECT qid FROM ".$table;
	$result_qid=$conn->query($query_qid);
	if($result_qid->num_rows>0)
	{
		while($row=$result_qid->fetch_assoc())
			$qid=$row['qid']+1;
	}
	else $qid=1;
	$_SESSION['qid']=$qid;
	
	$query="select * from ".$_SESSION['subject'];
	$result=$conn->query($query);
    $t_rows=$result->num_rows;
	if($_SESSION['qid'] > $t_rows)
	{	header("Location:show-result.php");
		exit;
	}
	$query="select * from ".$_SESSION['subject']." where qid='".$_SESSION['qid']."'";
 	$result=$conn->query("$query");
 	if($result->num_rows>0)
    while($row=$result->fetch_assoc())
	{
	    $qno=$row['qid'];
		$question=$row['question'];
		$option_a=$row['option_a'];
		$option_b=$row['option_b'];
		$option_c=$row['option_c'];
		$option_d=$row['option_d'];	
		$answer=$row['answer'];
	}
  
  if(isset($submit)||isset($t) )
  {
	  if($option_a==$answer)
		 $answer="option_a";
	  else
		 if($option_b==$answer)
			 $answer="option_b";
		 else
			 if($option_c==$answer)
				 $answer="option_c";
			 else 
				 $answer="option_d";
			 
	  if(!isset($myCheckbox))
	  {
	     $not_attempt="1";$is_right="0";$is_wrong="0";
	  }
      else
	  {   if($myCheckbox==$answer)
		  {
				$is_right="1";$is_wrong="0";$not_attempt="0";
		  }
	      else
		  {
				$is_right="0";$is_wrong="1";$not_attempt="0";
		  }
	  }
     
	 $stmt=$conn->prepare("INSERT INTO _".$id."_".$_SESSION['subject']."_result(qid,not_attempt,is_right,is_wrong) VALUES(?,?,?,?)");
	  if(isset($stmt))
	  {
		  $stmt->bind_param("iiii",$_SESSION['qid'],$not_attempt,$is_right,$is_wrong);
          if($stmt->execute())
		  {  
					if(isset($submit)) $_SESSION['qid']++;
					else  $_SESSION['qid']++;
					header("location:user-quiz.php");
					print "question is successfully added to database";
					exit;
		  }
	  }
}
 ?>