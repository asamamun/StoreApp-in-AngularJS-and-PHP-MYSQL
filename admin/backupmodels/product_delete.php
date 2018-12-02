<?php
require "database.php";
$_POST = json_decode(file_get_contents('php://input'),true);
if($_POST['action']=='delete'){
    $deleteQuery = "delete from products where id='".$_POST['p']."'";
    $deleteQueryResult = $conn->query($deleteQuery);
    if($conn->affected_rows == 1){
        echo "Product Deleted Successfully";
    }
    else {
        echo "Error!! Contact With administrator.";
    }
}


?>