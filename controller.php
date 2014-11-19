<?php

require 'insertClass.php';
$insert = new insertClass;

class controller {

protected $dbc = new PDO('mysql:host=localhost;dbname=learnPDO','root','root');

try {
	#all queries here
	#example: $insert->addName($dbc);
}
catch (PDOException $e) {
	$e->getMessage();
}



}