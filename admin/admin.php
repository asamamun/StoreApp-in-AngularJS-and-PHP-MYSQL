<?php
session_start();
?>
<!DOCTYPE html>
<html ng-app="sportsStoreAdmin">
<head>
<title>Administration</title>
<script type="text/javascript">
document.write("<base href='" + document.location + "' />");
</script>
<script src="../assets/js/angular.min.js"></script>
<script src="../assets/js/angular-route.min.js"></script>
<script src="../assets/js/angular-resource.min.js"></script>
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<script>
angular.module("sportsStoreAdmin", ["ngRoute", "ngResource"])
.config(function ($routeProvider, $locationProvider) {
    let defaultpath="<?php
        if(isset($_SESSION['valid_admin'])){
            if($_SESSION['valid_admin']){
             echo "/main";  
            }
            else echo "/login";
        }
        else echo "/login";
        ?>";    
$routeProvider.when("/login", {
templateUrl: "views/adminLogin.php"
});
$routeProvider.when("/main", {
disableCache: true,
templateUrl: "views/adminMain.php"
});
$routeProvider.otherwise({
redirectTo: defaultpath
});
    $locationProvider.html5Mode(true);
});
</script>
<script src="services/SessionService.js"></script>
<script src="controllers/adminControllers.js"></script>
<script src="controllers/adminProductController.js"></script>

</head>
<body>
    TODO:https://coderwall.com/p/f6brkg/angularjs-access-control-and-authentication
<ng-view />
</body>
</html>