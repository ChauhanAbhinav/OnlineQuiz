<form action="#" method="post">
<input type="checkbox" name="gender" value="Male">Male</input>
<input type="checkbox" name="gender" value="Female">Female</input>

<input type="checkbox" name="myCheckbox" class="myCheckbox" value="option_a"  onClick="check(this)"/>option_a        	
            <input type="checkbox" name="myCheckbox" value="option_b" class="myCheckbox" onClick="check(this)"/>option b
        	<input type="checkbox" name="myCheckbox" value="option_c" class="myCheckbox" onClick="check(this)"/>option c
            <input type="checkbox" name="myCheckbox" value="option_d" class="myCheckbox" onClick="check(this)"/>option d
<input type="submit" name="submit" value="Submit"/>

</form>
<?php
if (isset($_POST['gender'])||isset($_POST['myCheckbox'])){
echo $_POST['gender']; // Displays value of checked checkbox.
echo $_POST['myCheckbox'];
}
?>