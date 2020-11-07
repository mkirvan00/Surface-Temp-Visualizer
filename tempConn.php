<?php

$dbhost = '127.0.0.1'; // localhost
$dbuname = 'root';
$dbpass = 'root';
$dbname = 'temp_db';


//$dbo = new PDO('mysql:host=abc.com;port=8889;dbname=$dbname, $dbuname, $dbpass);

$dbo = new PDO('mysql:host=' . $dbhost . ';port=8889;dbname=' . $dbname, $dbuname, $dbpass);
    
    // Opens connection to a MySQL server
    $connection = mysqli_connect('localhost', $dbuname, $dbpass);
    if (!$connection) {
      die('Not connected : ' . $connection->error());
    }

    // Set active MySQL database
    $db_selected = $connection->select_db($dbname);
    if (!$db_selected) {
      die('Can\'t use db : ' . $connection->error());
    }

?>

