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
  
 
 
$string = "SELECT * FROM slservices WHERE  ID = ".$id; 

$query = mysqli_fetch_array(mysqli_query($dbhandle, $string));

echo( json_encode( array(
    	"name" => $query["name"],
        "img1" => $query["linkIMG1"],
        "img2" => $query["linkIMG2"],
        "img3" => $query["linkIMG3"],
        "img4" => $query["linkIMG4"],
        "type" => $query["type"],
        "id" => $query["ID"],
        "general" => $query ["generalText"],
        "activation" => $query ["activationRules"],
        "basicInfo" => $query ["basicInfo"],
        "pro" => $query ["promotion"]
        
    ) ) );

mysqli_close($dbhandle);

?>
