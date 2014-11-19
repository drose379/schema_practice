<?php

class insertClass {

public function insertPerson($connection) {
	$query = $connection->prepare("insert into person (id,name,phone) values ('1','Dylan','5542236549')");
	return $query->execute();
}



}