<?php

require 'insertClass.php';
$insert = new insertClass;

$dbc = new PDO('mysql:host=localhost;dbname=learnPDO','root','root');

$insert->insertPerson($dbc);
