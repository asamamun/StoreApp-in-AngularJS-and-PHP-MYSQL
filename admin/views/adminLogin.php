<h3>Login page</h3>
<a href="main">main</a> | 
<a href="login">login</a>|
<hr>
<div class="container">
<div class="card" ng-controller="authCtrl">
<div class="alert alert-info" ng-hide="authenticationError">
Enter your username and password and click Log In to authenticate
</div>
<div class="alert alert-danger" ng-show="authenticationError">
Authentication Failed ({{authenticationError.status}}). Try again.
</div>
userIsAuthenticated:{{userIsAuthenticated}}<br>
<form name="authForm" novalidate>
<div class="form-group">
<label>Username</label>
<input name="username" class="form-control" ng-model="username" required/>
</div>
<div class="form-group">
<label>Password</label>
<input name="password" type="password" class="form-control"
ng-model="password" required/>
</div>
<div class="text-center">
<button ng-click="authenticate(username, password)"
ng-disabled="authForm.$invalid"
class="btn btn-primary">
Log In
</button>
</div>
</form>
</div>
</div>