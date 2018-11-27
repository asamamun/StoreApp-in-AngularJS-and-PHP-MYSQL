angular.module("sportsStoreAdmin")
.controller("authCtrl", function($scope, $http, $location) {
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
$location.path("/main");
    }
    else{
     $scope.authenticationError = true;  
    $scope.authenticationError.status = data.data.message;
    }
},function (error) {
     console.log(data);
$scope.authenticationError = error;
});
}
})
.controller("mainCtrl", function($scope) {
$scope.screens = ["Products", "Orders","Users","Settings"];
$scope.current = $scope.screens[0];
$scope.setScreen = function (index) {
$scope.current = $scope.screens[index];
};
$scope.getScreen = function () {
    if($scope.current == "Products"){
        return "views/adminProducts.html";
    }
    else if($scope.current == "Orders"){
        return "views/adminOrders.html";
    }
    else if($scope.current == "Users"){
        return "views/adminUsers.html";
    }
    else if($scope.current == "Settings"){
        return "views/adminSettings.html";
    }
    else{
      return "views/adminProducts.html";  
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