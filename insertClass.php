<?php
class insertClass {

protected $con;

	public function __construct($dbc) {
		$this->con = $dbc;
	}

	public function newPerson($phone,$infoArray) {
		$query = $this->con->prepare("INSERT INTO phone (phone) VALUES (?)");
		$query->execute($phone);
		$query = $this->con->prepare("INSERT INTO person (id,name,phone) VALUES (?,?,?)");
		$query->execute($infoArray);
	}
}