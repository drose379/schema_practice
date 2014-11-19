<?php

require 'insertClass.php';

try {
	$dbc = new PDO('mysql:host=localhost;dbname=learnPDO','root','root');
}
catch (PDOexception $e) {
	echo $e->getMessage();
	echo "Bad";
}



$insert = new insertClass($dbc);
$arrayPhone = array('7853327765');
$insert->newPhone($arrayPhone);


