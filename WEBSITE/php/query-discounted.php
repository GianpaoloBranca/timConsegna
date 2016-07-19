<?php
header('Access-Control-Allow-Origin: *');

$username = "timwebs";
$password = "";
$hostname = "localhost";

$dbhandle = mysqli_connect($hostname, $username, $password)
  or die( json_encode(array( "error"=> "Impossibile connettersi al server.") ) );
$selected = mysqli_select_db($dbhandle, "my_timwebs")
  or die( json_encode(array("error"=> "Errore di connessione al server.") ) );

$string = "SELECT * FROM Devices WHERE discount > 0";
$query = mysqli_query($dbhandle, $string);
$data = array();
while($row = mysqli_fetch_array($query)) {
	$data[] = array(
    	"id" => $row["id"],
    	"name" => $row["name"],
        "price" => $row["price"],
        "discount" => $row["discount"]
    );
}
echo( json_encode( $data ) );

mysqli_close($dbhandle);

?>
