<?php
  define('DBHOST','localhost');
  define('DBUSER','root');
  define('DBPASSWD','');
  define('DBNAME','quiz');
  $conn=new mysqli(DBHOST,DBUSER,DBPASSWD,DBNAME);
  if($conn->connect_error)
	   die("connection failed".$conn->error);
  //print "Connection successful";
?>