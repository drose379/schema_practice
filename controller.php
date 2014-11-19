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

$phone = array('7853327765');
$infoArray = array('1','Foo','7853327765');
try {
	$insert->newPerson($phone,$infoArray);
}
catch (Exception $ex) {
	echo "Could not call method";
}

