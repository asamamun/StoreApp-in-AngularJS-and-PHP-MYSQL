<?php
require "database.php";
$selectQuery = "select * from products where 1";
$selectQueryResult = $conn->query($selectQuery);
$r=array();
while($row = $selectQueryResult->fetch_array(MYSQLI_ASSOC)){
	//$row['done'] = $row['done']?true:false;
	$r[] = $row;	
	}
//echo "{products: ".json_encode($r)."}";
echo json_encode($r);		
?>