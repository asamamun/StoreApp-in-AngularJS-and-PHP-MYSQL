<?php
require "../inc/database.php";
$_POST = json_decode(file_get_contents('php://input'),true);
$products_ser = serialize($_POST['products']);
$insertQuery = "insert into orders values(NULL,'".$_POST['name']."','".$_POST['street']."','".$_POST['city']."','".$_POST['state']."','".$_POST['zip']."','".$_POST['country']."','".$_POST['giftwrap']."','".$products_ser."',CURRENT_TIMESTAMP)";
$conn = new Database();
$conn->rawQuery($insertQuery);
if($conn->db->affected_rows == 1){
    echo "Order Submitted. Thank You.";
}
else {
    echo "Error!! Contact With administrator.";
}
?>