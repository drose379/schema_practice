<?php

//require 'insertClass.php';

try {
	$array = array('1','Dylan','5435546645');
	$dbc = new PDO('mysql:host=localhost;dbname=learnPDO','root','root');
	$query = $dbc->prepare("INSERT INTO person (id,name,phone) VALUES (?,?,?)");
	$query->execute($array);
}
catch (PDOexception $e) {
	echo $e->getMessage();
}


/*
$insert = new insertClass($dbc);

try {
	$insert->newPerson($arrayTest);
}
catch (Exception $e) {
	echo "Could not call method";
}

*/