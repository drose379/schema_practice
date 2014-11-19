<?php

class insertClass extends PDO {

public function insertPerson($connection) {
	$query = $connection->prepare("insert into person (id,name,phone) values ('1','Dylan','5542236549')");
	$query->execute();
	echo "Inserted";
}



}