// JavaScript Document
angular.module("sportsStoreAdmin")
.config(function($httpProvider) {
//$httpProvider.defaults.withCredentials = true;
})
.controller("productCtrl", function ($http, $scope, $resource,$location) {
//$scope.productsResource = $resource(productUrl + ":id", { id: "@id" });
$scope.getitems = function(){
	$http.get("models/products_get.php").
	then(function (data) {
		//console.log(data.data);
		$scope.products = data.data;
		//alert("done");
		},function(data){
			//console.log(data);
			$scope.error = data.data;
			});
	}

$scope.listProducts = function () {
//$scope.products = $scope.productsResource.query();
$scope.getitems();
}
$scope.deleteProduct = function (product) {
	var c = confirm("Are You Sure?");
	if(!c) return;
	//alert(product);
    $http.post("models/product_delete.php", {'p':product,'action':'delete'})
        .then(function (data) {
            alert(data.data);
        },function(data){
            alert(data.data);
        }).
    finally(function () {
        $scope.getitems();
    });
}
$scope.createProduct = function (product) {
//
$http.post("models/product_insert.php", product)
.then(function (data) {
	alert(data.data);
//$scope.products.push(data);
$scope.editedProduct = null;
$scope.getitems();	
	//console.log(data.data);
},function(data){
	alert(data.data);
	}).
finally(function () {
//$location.path("/");
});
//	
/*
new $scope.productsResource(product).$save().then(function (newProduct) {
$scope.products.push(newProduct);
$scope.editedProduct = null;
});
*/
}
$scope.updateProduct = function (product) {
//send values to a php file to update product
    $http.post("models/product_update.php", product)
        .then(function (data) {
            alert(data.data);
            $scope.editedProduct = null;
        },function(data){
            alert(data.data);
        }).
    finally(function () {
        $scope.getitems();
    });

//product.$save();
$scope.editedProduct = null;
}
$scope.startEdit = function (product) {
$scope.editedProduct = product;
}
$scope.cancelEdit = function () {
$scope.editedProduct = null;
}
//call getitems when page loads
$scope.getitems();
});