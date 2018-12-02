<?php
session_start();
if(isset($_SESSION['valid_admin']))
if(!$_SESSION['valid_admin']){
exit;
}
?>
<div class="container" ng-controller="mainCtrl">
        <h3>Main page userIsAuthenticated:{{}}<br></h3>
        <a href="main">main</a> | 
        <span class="btn btn-danger" ng-click="logout()">logout</span>
        <hr>
        <div class="panel panel-default row">
                <div class="col-md-3 panel-body">
                <a ng-repeat="item in screens" class="btn btn-block btn-default"
                ng-class="{'btn-primary': item == current }" ng-click="setScreen($index)">
                {{item}}
                </a>
                </div>
                <div class="col-md-9 panel-body" >
                <ng-include src="getScreen()"></ng-include>
                <!--
                <div ng-include="getScreen()" />
                </div>
                -->
                </div>
                </div>
</div>
