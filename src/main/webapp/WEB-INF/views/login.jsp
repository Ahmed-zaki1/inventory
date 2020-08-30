<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<div class="container">
  <h2>login</h2>
  <form action="login" method="post" modelAttribute="user">
  <div class="row">
  <div class="col-sm-6">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="text" class="form-control" name="username" id="username" placeholder="Enter email">
    </div>
    
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password" id="pwd" placeholder="Enter password">
    </div>
    </div>
    </div>
    <div class="row">
     <div class="col-sm-4">
     <div class="form-group">
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    </div>
     </div>
     <div class="col-sm-4">
      <div class="form-group">
    <div class="checkbox">
     <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    </div>
   </div>
    </div>
     <div class="row">
     <div class="col-sm-4">
     <div class="form-group">
    <div class="checkbox">
      <label> Forget Your Password</label>
    </div>
    </div>
    </div>
   <div class="col-sm-4">
     <div class="form-group">
    <div class="checkbox">
     <button type="submit" class="btn btn-primary">Reset Password</button>
    </div>
    </div>
    </div>
    </div>
    
  </form>
</div>


</body> 
</html>