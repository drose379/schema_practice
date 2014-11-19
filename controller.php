<?php

require 'insertClass.php';
$insert = new insertClass;

$array = array(
	
		);

$dbc = new PDO('mysql:host=localhost;dbname=learnPDO','root','root');

try {
	$insert->insertPerson($dbc,$array);
}
catch (PDOException $e) {
	$e->getMessage();
}

