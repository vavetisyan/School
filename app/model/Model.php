<?php

class Model {
	
	private static $connection = null;
	
	public static function getConnection(){
        if(empty(self::$connection)) {
            // Create connection
            $conn = new mysqli(SERVERNAME, USERNAME, PASSWORD, DBNAME);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            self::$connection = $conn;
            self::$connection->query("set names 'utf8'");
        }
	}
	
	public static function query($sql){
		if (self::$connection->query($sql) === true) {
			return true;
		}
		
		echo "Error: " . $sql . "<br>" . self::$connection->error;
		return false;
	}
	
	public static function get($sql){
		$result = [];
		$rows = self::$connection->query($sql);

		if ($rows->num_rows > 0) {
			// output data of each row
			while($row = $rows->fetch_assoc()) {
				$result[] = $row;
			}
		}
		
		return $result;
	}
	
	public static function disconnect(){
		self::$connection->close();
	}
}