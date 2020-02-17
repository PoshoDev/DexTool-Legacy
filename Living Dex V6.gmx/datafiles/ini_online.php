<?php
  //CORS header
  header("Access-Control-Allow-Origin: *");
	
  //Capture parameter
  $fname = $_POST['fname'];
  $INI = $_POST['INI'];
	
  //Write the file
  if ($f = fopen("$fname.ini", 'w+')) {
      
    fwrite($f, $INI);
    fclose($f);
    echo "OK";
  }
  else {
    echo "FAIL";
  }
?> 