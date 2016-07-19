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


$string = "SELECT * FROM sl_device WHERE sl_id=".$id;
$query = (mysqli_query($dbhandle, $string));
$data = array();
while ($row = mysqli_fetch_array($query)){
  $string_sel = "SELECT * from Devices WHERE id =".$row["dev_id"];
  $query_sel = mysqli_fetch_array(mysqli_query($dbhandle,  $string_sel));
	$data[] = array ("name" => $query_sel["name"] , "id" => $query_sel["id"]);
}
echo( json_encode($data));

mysqli_close($dbhandle);

?>
