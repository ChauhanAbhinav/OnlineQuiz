<?php
session_start();
ob_start();
   if(!isset($_SESSION['admin']))
    {	header("Location:/quiz/admin/admin-login.php");
		exit;
	}
require_once("../includes/config.php");   
extract($_GET); extract($_POST); 
if($action=='edit'&&isset($qid)){
	   //put data into database-----------------------------------------------------
if(isset($submit))
  {		
	 if($answer==='select')
		{
		print  '<div class="fluid"><div class="alert alert-danger alert-dismissible">
      <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
      <strong>Failed! </strong>Please select the answer.</div></div>';  
		}
	else{
		if($answer=="first") 
	    $answer=$option_a; 		
	    if($answer==='second') 
	    $answer=$option_b;		
        if($answer==='third') 
	    $answer=$option_c;
	    if($answer==='fourth') 
	    $answer=$option_d; 
	
		$query_update="UPDATE $subject SET question='".$question."' , option_a='".$option_a."' , option_b='".$option_b."' , option_c='".$option_c."' , option_d='".$option_d."' , answer='".$answer."' where qid=$qid";
		if($conn->query($query_update))
			{      
			print  '<div class="fluid"><div class="alert alert-success alert-dismissible">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>Success!</strong> Your question is successfully updated.</div></div>';
			}
		else  
		{ 		echo print  '<div class="fluid"><div class="alert alert-danger alert-dismissible">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Failed! </strong>Please select the answer.</div></div>';
		}
	 	//header("Location:subject-questions.php");
        }	
     }
	  //show data into form----------------------------------------------------- 
		$query="select * from $subject where qid=$qid";$button="Update Question";
        $result=$conn->query($query);
		if($result->num_rows>0)
		  while($row=$result->fetch_assoc()){	
	        $u_question=$row['question'];
			$u_option_a=$row['option_a'];
			$u_option_b=$row['option_b'];
			$u_option_c=$row['option_c'];
			$u_option_d=$row['option_d'];
			$u_answer=$row['answer'];
			$array[0]='';$array[1]='';$array[2]='';$array[3]='';$array[4]='';
			if($u_answer==$u_option_a)
			   $array[0]='selected';
			if($u_answer==$u_option_b)
			   $array[1]='selected';
			if($u_answer==$u_option_c)
			   $array[2]='selected';
			if($u_answer==$u_option_d)
			   $array[3]='selected';			
		}//while loop 
   }//action		
?>
<head>
   <title>Questions</title>
   <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   
</head>
<body>
    <div class="container">
    <div class="row">
		<div class="col-xs-11">
           <h2>Question:</h2>
		</div>
       <div class="col-xs-1" style="padding-top:20px">
		<a href="subject-questions.php?subject=<?php print $subject; ?> "<button type="submit" class="btn btn-default" id="login" name="submit" value="submit" >Back</button></a>
       </div>
    </div>
     
        <form action="update-question.php?<?php echo "subject=".$subject."&action=".$action."&qid=".$qid ;?>" method="post">
           <div class="row">
               <div class="col-sm-12">                 
                  <div class="form-group">
                    <textarea style="height:230px;" type="text" name="question" class="form-control" id="question" placeholder="question goes here...." required ><?php print $u_question; ?></textarea>
                  </div>  
               </div>               
            </div>
            <b>Options :</b><br>
			<div class="form-group">
               <input class="form-control" type="text" name="option_a" id="option_a" placeholder="First Option" required     value="<?php print $u_option_a; ?>">
            </div>
            <div class="form-group">
               <input class="form-control" type="text" name="option_b" id="option_b" placeholder="Second Option" required   value ="<?php print $u_option_b; ?>">
            </div>
            <div class="form-group">
               <input class="form-control" type="text" name="option_c" id="option_c" placeholder="Third Option" required     value="<?php print $u_option_c; ?>">
            </div>
            <div class="form-group">
               <input class="form-control" type="text" name="option_d" id="option_d" placeholder="Fourth Option" required   value ="<?php print $u_option_d; ?>">
            </div>
            <div class="form-group">
            <b>Answer :</b><br>
			<select class="form-control" name="answer" id="answer" required value="select[2]">
                 <option value="select" name="select_ans">Select Answer</option>
                 <option value="first" <?php print $array[0]; ?>>First Option</option>
                 <option value="second" <?php print $array[1]; ?>>Second Option</option>
                 <option value="third" <?php print $array[2]; ?> >Third Option</option>
                 <option value="fourth" <?php print $array[3]; ?>>Fourth Option</option>
            </select>
            </div>
				<div class="align-center">
                   <input type="submit" class="btn btn-default" id="login" name="submit" value="Update" >
               </div>
        </form>
    </div>
</body>
</html>