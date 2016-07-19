<?php
header('Access-Control-Allow-Origin: *');

$id = $_GET['id'];
$id = urldecode($id);

$username = "timwebs";
$password = "";
$hostname = "localhost";

$dbhandle = mysqli_connect($hostname, $username, $password)
  or die( json_encode(array( "error"=> "Impossibile connettersi al server.") ) );
$selected = mysqli_select_db($dbhandle, "my_timwebs")
  or die( json_encode(array("error"=> "Errore di connessione al server.") ) );

$string = "SELECT * FROM Devices WHERE id = ".$id;

$query = mysqli_fetch_array(mysqli_query($dbhandle, $string));

echo( json_encode( array(
		"id" => $query["id"],
    	"name" => $query["name"],
        "price" => $query["price"],
        "weight" => $query["weight"],
        "dimensions" => $query["dimensions"],
        "display" => $query["display"],
        "other" => $query["other"],
        "discount" => $query["discount"],
        "type" => $query["type"],
        "images" => $query["images"],
        "next" => $query["next"]
    ) ) );

mysqli_close($dbhandle);

?>

