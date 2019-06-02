<?php 
   session_start();
   ob_start();
   if(!isset($_SESSION['admin']))
   {  
   		header("Location:/quiz/admin/admin-login.php");
   		exit;
   }
   require_once("../includes/config.php");   
   extract($_GET);extract($_POST);
   //print $subject;
   if(isset($submit))
   {	   
	 if($answer==='select')
	 {
		print  '<div class="fluid"><div class="alert alert-danger alert-dismissible">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Failed! </strong>Please select the answer.</div></div>';    
	 }
	 else 
	 {
	 if($answer==="first") 
	    $answer=$option_a;		
	 if($answer==='second') 
	    $answer=$option_b;		
     if($answer==='third') 
	    $answer=$option_c;
	 if($answer==='fourth') 
	    $answer=$option_d; 
		  // print $subject.'&nbsp;'; print $subject.'&nbsp;';
   		  // print $question.'$nbsp;';print $option_a.'$nbsp;';print $option_b.'$nbsp;';print $option_c.'$nbsp;';print $option_d.           '$nbsp;';print $answer.'$nbsp;';
     
     $stmt=$conn->prepare("INSERT INTO $subject(question,option_a,option_b,option_c,option_d,answer) VALUES(?,?,?,?,?,?)");
     $stmt->bind_param("ssssss",$question,$option_a,$option_b,$option_c,$option_d,$answer);
     if($stmt->execute())
	 {      
	    print  '<div class="fluid"><div class="alert alert-success alert-dismissible">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Success!</strong> Your question is successfully added to '.$subject.'</div></div>';
     }
	 
   }
  }
 ?>
<html>
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
           <h2>Question</h2>
    </div>
       <div class="col-xs-1" style="padding-top:20px">
    <a href="subject-questions.php?subject=<?php print $subject;?>" ><button type="submit" class="btn btn-default" id="login" name="submit" value="submit" >Back</button></a>
       </div>
    </div>
     
        <form action="add-question.php?subject=<?php print $subject; ?>" method="post">
            <div class="row">
               <div class="col-sm-12">                 
                  <div class="form-group">
                    <textarea style="height:250px;" type="text" name="question" class="form-control" id="question" placeholder="question goes here...." required ></textarea>
                  </div>  
               </div>               
            </div>
            <b>Options :</b><br>
			<div class="form-group">
               <input class="form-control" type="text" name="option_a" id="option_a" placeholder="First Option" required     >
            </div>
            <div class="form-group">
               <input class="form-control" type="text" name="option_b" id="option_b" placeholder="Second Option" required   >
            </div>
            <div class="form-group">
               <input class="form-control" type="text" name="option_c" id="option_c" placeholder="Third Option" required     >
            </div>
            <div class="form-group">
               <input class="form-control" type="text" name="option_d" id="option_d" placeholder="Fourth Option" required   >
            </div>
            <div class="form-group">
            <b>Answer :</b><br>
			<select class="form-control" name="answer" id="answer" required value="select[2]">
                 <option value="select" >Select Answer</option>
                 <option value="first"  name="first">First Option</option>
                 <option value="second"  name="second">Second Option</option>
                 <option value="third" name="third">Third Option</option>
                 <option value="fourth" name="fourth">Fourth Option</option>
            </select>
            </div>
            <div class="align-center">
                   <button type="submit" class="btn btn-default" id="login" name="submit" value="submit" >Add Question</button>
               </div>
        </form>
    </div>
</body>
</html>


<!--<div class="container">
  <div class="container">

<h2>Alerts</h2>
<p>The a element with class="close" and data-dismiss="alert" is used to close the alert box.</p>
<p>The alert-dismissible class adds some extra padding to the close button.</p> 

<div class="alert alert-success alert-dismissible">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
<strong>Success!</strong> This alert box could indicate a successful or positive action.
</div>

<div class="alert alert-info alert-dismissible">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
<strong>Info!</strong> This alert box could indicate a neutral informative change or action.</div>

<div class="alert alert-warning alert-dismissible">
<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Warning!</strong> This alert box could indicate a warning that might</div>
-->