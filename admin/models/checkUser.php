<?php
session_start();
require "../../inc/database.php";
$userdata = json_decode(file_get_contents('php://input'),true);
$conn = new Database();
$conn->table_name = "users";
$users = $conn->get_all_where("useremail='".$userdata['username']."'");
//echo json_encode($users);
//exit;
if(count($users)){
if(password_verify($userdata['pass'],$users[0]['password'])){
    $data = [
        'success'=>true,
        'message'=>'valid user'
    ];
    //remove password and save in session
    $_SESSION['admininfo'] = serialize($users);
    $_SESSION['valid_admin'] = true;
}
else{
    $data = [
        'success'=>false,
        'message'=>'Invalid password'
    ];
    $_SESSION['valid_admin'] = false;
}
}
else{
   $data = [
        'success'=>false,
        'message'=>'Username Invalid'
    ];
    $_SESSION['valid_admin'] = false;
}
echo json_encode($data);
?>