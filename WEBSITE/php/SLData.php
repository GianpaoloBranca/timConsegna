<?php
header('Access-Control-Allow-Origin: *');

$type = $_GET['type'];

$username = "timwebs";
$password = "";
$hostname = "localhost";

$dbhandle = mysqli_connect($hostname, $username, $password)
  or die( json_encode(array( "error"=> "Impossibile connettersi al server.") ) );
$selected = mysqli_select_db($dbhandle, "my_timwebs")
  or die( json_encode(array("error"=> "Errore di connessione al server.") ) );

$string = "SELECT * FROM slservices WHERE (type='".$type."')";
$query = mysqli_query($dbhandle, $string);
$data = array();
while($row = mysqli_fetch_array($query)) {
	$data[] = array(
    	"name" => $row["name"],
        "id" => $row["ID"],
      
        "basicInfo" => $row["basicInfo"],
        "introIMG" => $row["introLinkIMG"]
    );
}




echo( json_encode( $data ) );

mysqli_close($dbhandle);

?>