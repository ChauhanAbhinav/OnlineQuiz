<?php
session_start();
   if(!isset($_SESSION['user']))
   {  header("Location:user-login.php");exit;} 
  require_once("sequenced-questions-data.php"); 
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
	  {
		  background-color:#23282D;
		  color:white;
		  border-radius:0px;		
		  height:70px;
		  line-height:70px;
		  font-size:2.0em;
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
	
	#page-head{
		height:50px;width:100%;
		background-color:#F0F1F2;
		border-bottom: 1px solid #eee;
		margin: 0px 0 20px;
		padding-bottom: 9px;
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
<div class="container-fluid" style="padding:0px;margin:0px;position:fixed;z-index:100;">
      <div class="row" style="padding:0px;margin:0px;position:fixed;z-index:100;">  
	  
         <div class="col-xs-12" style="padding:0px;margin:0px;position:fixed;z-index:100;width:100%;">	
            <div  id="quiz-header" style="position:fixed;z-index:100;width:100%;" >&emsp;Puzzle  <span style="float:right;margin-right:20px;font-size:1.0em;color:white;" id="demo"></span> 	</div>				 
         </div>
         	 
      </div>
       	  
</div>
<div class="container">
    <form action="" method="GET" id="form" name="myForm" >  
	
    <div class="row" style="border:1px solid #dddddd;margin-top:100px;">
    	<div class="col-xs-12" align="">
		
		
		<?php 
           $query="select * from $subject";
	       $result=$conn->query($query);
		   $i=1;
		   if($result->num_rows>0)
		   {
			   while($row=$result->fetch_assoc())
			{
				extract($row);
				//$question=array("$question");
				$option_a=array("$option_a");
				$option_b=array("$option_b");
				$option_c=array("$option_c");
				$option_d=array("$option_d");
				$answer=array("$answer");				
				$question=array("$question");
				foreach($question as $value){ print '<strong>Q. '.$i.'</strong><textarea class="form-control_quiz" id="textarea" readonly>'.$value.'</textarea>'; }
				print  '<table cellspacing="50" cellpadding="20">';//print $i;
                foreach($option_a as $value){ print '<tr ><td><input type="checkbox" name="myCheckbox['.$i.']"  value="option_a"  onClick="check(this,'.$i.');" />&emsp;</td><td>&emsp;'.$value.'</td></tr>'; }
				foreach($option_b as $value){ print '<tr ><td><input type="checkbox" name="myCheckbox['.$i.']"  value="option_b"  onClick="check(this,'.$i.');" />&emsp;</td><td>&emsp;'.$value.'</td></tr>'; }
				foreach($option_c as $value){ print '<tr ><td><input type="checkbox" name="myCheckbox['.$i.']"  value="option_c"  onClick="check(this,'.$i.');" />&emsp;</td><td>&emsp;'.$value.'</td></tr>'; }
				foreach($option_d as $value){ print '<tr ><td><input type="checkbox" name="myCheckbox['.$i.']"  value="option_d"  onClick="check(this,'.$i.');" />&emsp;</td><td>&emsp;'.$value.'</td></tr>'; }
                print '</table><br><hr>';				
				++$i;
		   }			
		 }
		 else print "nothing fetched";		   
		?>
          
			
        </div>    
    </div><br>
	
    <button type="submit" name="submit" value="submit" class="btn btn-default" style="background-color:#13455B;color:white;">Submit Answers</button></br></br></br>
	<input type="hidden" id="min" name="min" value="minute"/>
	<input type="hidden" id="sec" name="sec" value="second"/>
    </form>	
</div>
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
<script>
    autosize(document.getElementsByTagName("textarea"));
	
    function check(id,i)
		{
			<?php
			for($j=1;$j<=num_rows();$j++)
			{
				print '
				if(i=='.$j.')
				{	
					var myCheckbox = document.getElementsByName("myCheckbox['.$j.']");			 
					Array.prototype.forEach.call(myCheckbox,function(el)
					{
						el.checked = false;
					}	);
						id.checked = true;
					     window.checkbox'.$j.'=id.value;
                        //alert(checkbox'.$j.');
						
				}';		
			}
            ?> 
           			
		}
		
</script>

<script>
var d=new Date(new Date().getTime() +25*60*1000).getTime(); 
var x = setInterval(function() {
        var now = new Date().getTime();    
        var difference =d - now;     
        var minutes = Math.floor((difference % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((difference % (1000 * 60)) / 1000);   
    document.getElementById("demo").innerHTML = minutes + "m " + seconds + "s ";  
    document.getElementById("sec").value=59-seconds;
    document.getElementById("min").value=24-minutes;	
       if (difference < 0) 
	   {
            clearInterval(x);
            document.getElementById("demo").innerHTML = "TIME OUT";
			redirect();
	   }
}, 1000);

		function redirect()
		{
					window.location="sequenced-questions-timer.php?"
				     <?php
					    
						for($v=1;$v<=num_rows();$v++)
						{
							if($v<=num_rows())
								print '+"cb['.$v.']="+'.'window.checkbox'.$v.'+"&"';								
						}
							print '+'.'"s="'.'+window.s';
					?> ;
		}
		
</script>
   <?php // print num_rows() ?>
</body>
</html>
