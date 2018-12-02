<?php
//get values from post method
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
//include Database class
require "../inc/database.php";
$conn = new Database();
$conn->table_name = "products";
//get all data
if(isset($request) && $request->action == "showall"){
    $alldata = $conn->get_all();
    echo json_encode($alldata);
}
if(isset($request) && $request->action == "add"){
    echo json_encode(['a'=>'add']);
}