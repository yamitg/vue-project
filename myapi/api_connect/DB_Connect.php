<?php
error_reporting(E_ERROR | E_PARSE);
error_reporting(0);
class DB_Connect {

    // constructor
    function __construct() {
        
    }

    // destructor
    function __destruct() {
        // $this->close();
    }

    // Connecting to database
    public function connect() {
        //require_once 'Config.php';
    	define('DB_NAME', 'schoolForm');
    	
    	// /** MySQL database username */
    	define('DB_USER', 'root');
    	
    	// /** MySQL database password */
    	define('DB_PASSWORD', 'root');
    	
    	// /** MySQL hostname */
    	define('dbserver', 'localhost:3306');
        
        $con=mysqli_connect(dbserver, DB_USER, DB_PASSWORD,DB_NAME);

// Check connection
if (!$con)
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
    // else echo"Connected";
        
        return $con;        
        
    }
    // Closing database connection
    public function close() {
        mysqli_close();
    }
}

?>