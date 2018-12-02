<?php
session_start();
if(!isset($_SESSION['valid_admin'])){
  exit;  
}
if(!$_SESSION['valid_admin']){
    exit;
}
require "database.php";
$_POST = json_decode(file_get_contents('php://input'),true);
//var_dump($_POST);
//exit;
//$products_ser = serialize($_POST['products']);
//INSERT INTO table (id, name, age) VALUES(1, "A", 19) ON DUPLICATE KEY UPDATE    
//name="A", age=19
//$insertQuery = "insert into products values(NULL,'".$_POST['name']."','".$_POST['description']."','".$_POST['category']."','".$_POST['price']."',CURRENT_TIMESTAMP) ON DUPLICATE KEY UPDATE name='".$_POST['name']."',description='".$_POST['description']."', category='".$_POST['category']."',price='".$_POST['price']."'";
$updateQuery = "UPDATE `products` SET `name`='".$_POST['name']."',`description`='".$_POST['description']."',`category`='".$_POST['category']."',`price`='".$_POST['price']."' WHERE id='".$_POST['id']."'";
//echo $updateQuery;
//exit;
$insertQueryResult = $conn->query($updateQuery);
if($conn->affected_rows == 1){
	echo "Product Updated Successfully";
	}
else {
	echo "Error!! Contact With administrator.";
	}
//$insertQuery = "insert into products values(NULL,'".$_POST['name']."','".$_POST['description']."','".$_POST['category']."','".$_POST['price']."',CURRENT_TIMESTAMP)";	
?>