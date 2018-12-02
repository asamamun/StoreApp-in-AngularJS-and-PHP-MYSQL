<?php
session_start();
if(!isset($_SESSION['valid_admin'])){
  exit;  
}
if(!$_SESSION['valid_admin']){
    exit;
}
require "../../inc/database.php";
$conn = new Database();
$selectQuery = "select * from orders where 1";
$selectQueryResult = $conn->rawQuery($selectQuery);
$r=array();
while($row = $selectQueryResult->fetch_array(MYSQLI_ASSOC)){
	//$row['done'] = $row['done']?true:false;
	$row['products'] = unserialize($row['products']);
	$r[] = $row;	
	}
//echo "{products: ".json_encode($r)."}";
echo json_encode($r);		
?>