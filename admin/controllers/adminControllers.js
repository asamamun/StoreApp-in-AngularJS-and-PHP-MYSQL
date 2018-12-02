angular.module("sportsStoreAdmin")
.controller("authCtrl", function($scope, $http, $location,SessionService) {
    $scope.username = "admin@idbbisew.com";
    $scope.password = "admin";
$scope.authenticate = function (user, pass) {
$http.post("models/checkUser.php", {
username: user,
pass: pass
}, {
withCredentials: true
}).then(function (data) {
//    console.log(data);
    if(data.data.success){
$scope.authenticationError = false;
SessionService.setUserAuthenticated(true);
$location.path("/main");
    }
    else{
        SessionService.setUserAuthenticated(false);
     $scope.authenticationError = true;  
    $scope.authenticationError.status = data.data.message;
    }
},function (error) {
    SessionService.setUserAuthenticated(false);
     console.log(data);
$scope.authenticationError = error;
});
}
})
.controller("mainCtrl", function($scope,$http,$location,SessionService) {
$scope.screens = ["Products", "Orders","Users","Settings"];
$scope.current = $scope.screens[0];
$scope.setScreen = function (index) {
$scope.current = $scope.screens[index];
};
$scope.logout = function(){
    console.log("logout called");
$http.post("models/logout.php",{}).then(function(data){
    console.log(data);
if(data.data.action){
    SessionService.setUserAuthenticated(false);
    $location.path("/login");
}
},function(error){
    console.log(error);
});
};
$scope.getScreen = function () {
    if(!SessionService.getUserAuthenticated()){
        return "views/adminLogin.php";
    }
    if($scope.current == "Products"){
        return "views/adminProducts.php";
    }
    else if($scope.current == "Orders"){
        return "views/adminOrders.php";
    }
    else if($scope.current == "Users"){
        return "views/adminUsers.php";
    }
    else if($scope.current == "Settings"){
        return "views/adminSettings.php";
    }
    else{
      return "views/adminProducts.php";  
    }
};
})
.controller("ordersCtrl", function ($scope, $http) {
$http.get("models/orders_get.php")
.then(function (data) {
	//console.log(data);
$scope.orders = data.data;
},function (error) {
$scope.error = error;
});
$scope.selectedOrder;
$scope.selectOrder = function(order) {
$scope.selectedOrder = order;
};
$scope.calcTotal = function(order) {
var total = 0;
for (var i = 0; i < order.products.length; i++) {
total +=
order.products[i].count * order.products[i].price;
}
return total;
}
});