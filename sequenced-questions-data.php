<?php

   if(!isset($_SESSION['user']))
   {  header("Location:user-login.php");exit;} 
	require_once("includes/config.php");
	$subject='java'; 
	$_SESSION['subject']=$subject;
	$id=$_SESSION['id'];
	//extract($_POST);
	extract($_GET);

	function num_rows_result()
	   {
		         global $conn;global $subject;global $id;
		         $query="select * from _".$id."_".$subject."_result";
				 $result=$conn->query($query);
				 return $result->num_rows;
	   } 
       function num_rows()
	   {
		         global $conn;global $subject;
		         $query="select * from $subject";
				 $result=$conn->query($query);
				 	 return $result->num_rows;
	   }
	   if(num_rows()==num_rows_result())
	{
		header("location:show-result.php");
		exit;
	}
	   if(isset($submit))
	   {	
			$query="select * from $subject";
			$result=$conn->query($query);
			if($result->num_rows>0)
				{   
					$qid=1;
					while($row=$result->fetch_assoc())		   
					{
						extract($row);
						$question=array("$question");foreach($question as $v_question){ ; }// print $value."<br>"
						$option_a=array("$option_a");foreach($option_a as $v_option_a){ ; }// print $value."<br>"
 						$option_b=array("$option_b");foreach($option_b as $v_option_b){ ; }// print $value."<br>"
						$option_c=array("$option_c");foreach($option_c as $v_option_c){ ; }// print $value."<br>"
						$option_d=array("$option_d");foreach($option_d as $v_option_d){; }//  print $value."<br>"
						$answer=array("$answer");foreach($answer as $v_answer){ ; }// print $value."<br>"
						
						if($v_option_a==$v_answer)
							$v_answer="option_a";
						else
							if($v_option_b==$v_answer)
								$v_answer="option_b";
							else
								if($v_option_c==$v_answer)
									$v_answer="option_c";
								else 
									$v_answer="option_d";

                        if(!isset($myCheckbox[$qid]))
						{
						 	
							$not_attempt="1";$is_right="0";$is_wrong="0";
							insertIntoTable($qid,$not_attempt,$is_right,$is_wrong,$min,$sec);++$qid;
						}
						else
							{	
								if($myCheckbox[$qid]==$v_answer)
									{
										$is_right="1";$is_wrong="0";$not_attempt="0";
										insertIntoTable($qid,$not_attempt,$is_right,$is_wrong,$min,$sec);++$qid;
									}
								else
									{
										$is_right="0";$is_wrong="1";$not_attempt="0";
										insertIntoTable($qid,$not_attempt,$is_right,$is_wrong,$min,$sec);++$qid;
									}
							}
						 
					}							
				}			
		    
	   }	 
			
		 function  insertIntoTable($qid,$not_attempt,$is_right,$is_wrong,$min,$sec)
		 {
			 global $conn;global $subject;global $id;global $min;global $sec;
			 $stmt=$conn->prepare("INSERT INTO _".$id."_".$subject."_result(qid,not_attempt,is_right,is_wrong,min,sec) VALUES(?,?,?,?,?,?)");
			 if(isset($stmt))
			 {
				 $stmt->bind_param("iiiiii",$qid,$not_attempt,$is_right,$is_wrong,$min,$sec);
				 if($stmt->execute())
					header("Location:show-result.php");					 
			 }
		 }	  
	   
?>