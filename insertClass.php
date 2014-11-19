<?php
class insertClass {

protected $con;

	public function __construct($dbc) {
		$this->con = $dbc;
	}

	public function newPhone($array) {
		$query = $this->con->prepare("INSERT INTO phone (phone) VALUES (?)");
		$query->execute($array);
	}
}