<?php
header('Access-Control-Allow-Origin: *');

$id = $_GET['id'];

$username = "timwebs";
$password = "";
$hostname = "localhost";

$dbhandle = mysqli_connect($hostname, $username, $password)
  or die( json_encode(array( "error"=> "Impossibile connettersi al server.") ) );
$selected = mysqli_select_db($dbhandle, "my_timwebs")
  or die( json_encode(array("error"=> "Errore di connessione al server.") ) );

$string = "SELECT * FROM sl_device WHERE dev_id=".$id;
$query = mysqli_query($dbhandle, $string);
$data = array();
while($row = mysqli_fetch_array($query)) {
	$string_dev = "SELECT name, id FROM slservices WHERE ID=".$row["sl_id"];
    $query_dev = mysqli_fetch_array(mysqli_query($dbhandle, $string_dev));
	$data[] = array ( "name" => $query_dev["name"],
    				  "id" => $query_dev["id"]);
    
}
echo( json_encode( $data ) );
mysqli_close($dbhandle);

?>
