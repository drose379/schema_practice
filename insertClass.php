<?php
class insertClass {

protected $con;

	public function __construct($dbc) {
		$this->con = $dbc;
	}

	public function newPerson($array) {
		try {
			$query = $this->con->prepare("INSERT INTO person (id,name,phone) VALUES (?,?,?)");
			$query->execute($array);
		}
		catch (Exception $e) {
			echo "Bad query";
		}
	}
}