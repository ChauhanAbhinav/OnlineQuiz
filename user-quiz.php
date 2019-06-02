<?php
require_once("user-quiz-data.php"); 
  if($_SESSION['subject']=="c") $show_sub="C";
	else if($_SESSION['subject']=="cpp") $show_sub="KBC";
		else $show_sub="Puzzle";
  ?>
<html>
<head>
   <title>Questions</title>
   <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
    <style>
	  #quiz-header
	  {	position:fixed;
		background-color:#23282D;
		color:white;border-radius:0px;margin: 0px 0 20px;
		padding-bottom:9px;width:100%;z-index:1;
		height:70px;line-height:70px;font-size:2.0em;
	  }
	  body
	  {
		  background-color:;background: 
	  }
	  #question
	  {
		  margin-top:30px;font-size:2.0em;color:#21B685;
	  }    
	 .timer
	 {
		 background-color:#454F59;width:100%;height:50px;margin-top:0px;padding-top:0px;
	 }
	*{
      margin:0px;padding:0px;
	 }	
	#demo{
		font-size:2.0em;color:#98CCCD;
	}
	.form-control_quiz
	{
		display: block;
		width: 100%;
		height: 34px;
		padding: 6px 12px;
		font-size: 1em;
		line-height: 1.42857143;
		color: #555;
		background-color:;
		background-image: none;
		border: 0px solid #ccc;
		border-radius: 4px;
		outline:none;
		-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
		-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        resize:none;		
	}
     input[type="checkbox"]
	 {
		width: 20px; /*Desired width*/
		height: 20px; /*Desired height*/
	 }	
	  td{padding:8px;}
	</style> 	
 
</head>
<body>
<div class="container-fluid">
            <div  id="quiz-header">&emsp;<?php echo $show_sub ?> Quiz<span style="float:right;padding-right:25px " id="timer">60</span></div>
			<div style="height:70px;width:100%"></div>
			<div style="width:100%;height:50px;margin-top:10px;"><?php print '<span style="font-size:15px;padding-left:25px"><b>Ques '.$_SESSION['qid'].'.</b></span>'?></div> 
		 		
      </div>			
</div>
<div class="container">
    <form action="user-quiz.php" method="get">    
    <div class="row" style="border:1px solid #dddddd;">
    	<div class="col-xs-12" style="color:white;" align="" >
		  
            <textarea class="form-control_quiz" id="textarea" readonly><?php print $question; ?></textarea>
			 <hr>
			<table class="display-quiz">
			<tr><td><input type="checkbox" name="myCheckbox" id="checkboxFiveInput_a" class="checkbox" value="option_a"  onClick="check(this)"/></td><td>&emsp;<?php print $option_a; ?></td></tr>
			<tr><td><input type="checkbox" name="myCheckbox" id="checkboxFiveInput_b" class="checkbox" value="option_b"  onClick="check(this)"/></td><td>&emsp;<?php print $option_b; ?></td></tr>
			<tr><td><input type="checkbox" name="myCheckbox" id="checkboxFiveInput_c" class="checkbox" value="option_c"  onClick="check(this)"/></td><td>&emsp;<?php print $option_c; ?></td></tr>
			<tr><td><input type="checkbox" name="myCheckbox" id="checkboxFiveInput_d" class="checkbox" value="option_d"  onClick="check(this)"/></td><td>&emsp;<?php print $option_d; ?></td></tr>
			</table><br>
        </div>    
    </div><br>
    <button type="submit" name="submit" value="submit" class="btn btn-default" style="background-color:#13455B;color:white;">Submit Answer</button>
    </form>	
</div>
<script>
      autosize(document.getElementsByTagName("textarea"));
	  function check(id)
	 {
		var myCheckbox = document.getElementsByName("myCheckbox");
		Array.prototype.forEach.call(myCheckbox,function(el)
		{
		el.checked = false;
		});
		id.checked = true;
	}
</script>
<script> 
var cb =document.getElementsByClassName("checkbox");
var status;
var t=60;
var i=setInterval(fun,1000);
function fun()
{
	t--;
	if(t<10&&t>=0) document.getElementById("timer").innerHTML="0"+t;
	else
	document.getElementById("timer").innerHTML=t;
	if(t==0) 
	{
	if(cb[0].checked) status="option_a";
else if(cb[1].checked) status="option_b";
else if(cb[2].checked) status="option_c";
else if(cb[3].checked) status="option_d";
else status="";	
	clearInterval(i);
	if(status!="")
	window.location="user-quiz-data.php?t=1&myCheckbox="+status;
	else window.location="user-quiz-data.php?t=1";
	}
}
</script>
<noscript>
    <style>
        .container {display:none;}
		.container-fluid{display:none;}
    </style>
	<div style="height:550px;"><h3>Please Enable javascript, without javascript we can't afford to show content for you.</h3></div>
	<div class="footer" style="background-color:#111111;text-align:center;width:100%;">
		<div style="display:table;;margin:0px auto;height:130px;color:#999999;">
			<div style="display:table-cell;vertical-align:middle;" >
<span style="font-size:14px;">We're currently taking on new projects. Would you like to disscuss yours?</span><br>
<span>&copy;&nbsp;Abhinav & Narendra&emsp;[+91 8387827918,+91 9529559201]</span><br>
<span>Powered by C Institute</span>
			</div>
		</div>
</div>
</noscript>
</body>
</html>