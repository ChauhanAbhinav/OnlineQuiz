<style>
.text{width:300px;}
</style>
<span id="time">60</span>
<textarea class="text">
hello hellohello hello hello hello hello hello hello
hello hellohello hello hello hello hello hello hello
hello hellohello hello hello hello hello hello hello
hello hellohello hello hello hello hello hello hello
hello hellohello hello hello hello hello hello hello
hello hellohello hello hello hello hello hello hellohe
llohello hellohello hello hello hello hello hello hello
</textarea>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
var t=60;
var i=setInterval(fun,1000);

function fun()
{
	t--;
	document.getElementById("time").innerHTML=t;
	if(t==50) {clearInterval(i);  
	//window.location="https://www.youtube.com/watch?v=hjWf8A0YNSE";
	}
}
      function adjustHeight(ctrl) {  
$(ctrl).css({'height':'auto','overflow-y':'hidden'}).height(ctrl.scrollHeight);
}
$(".text").each(function () {
  adjustHeight(this);
}).on('input', function () {
  adjustHeight(this);}  );

   //this is for auto adjust the height of textarea
</script>
<script>


//for(i=0;i<100000000000;i++);
</script>
