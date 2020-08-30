<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
  <link rel=" https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
  <script src=" https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">

</head>
<body>
<div class="d-flex" id="wrapper">
  
    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading"></div>
      <div class="list-group list-group-flush">
       <a href="dashboard.jsp" class="list-group-item list-group-item-action bg-light">Home</a>
        <a href="${pageContext.request.contextPath }/showProjectPage" class="list-group-item list-group-item-action bg-light">Add Project</a>
        <a href="${pageContext.request.contextPath }/showServicePage" class="list-group-item list-group-item-action bg-light">Add Services</a>
        <a href="${pageContext.request.contextPath }/showCategoryPage" class="list-group-item list-group-item-action bg-light">Add Category</a>
        <a href="${pageContext.request.contextPath }/showProductPage" class="list-group-item list-group-item-action bg-light">Add Product</a>
              <a href="${pageContext.request.contextPath }/showOrderPage" class="list-group-item list-group-item-action bg-light">Order</a>
                   <a href="${pageContext.request.contextPath }/showOrderListPage" class="list-group-item list-group-item-action bg-light">OrderList</a>
                    <a href="${pageContext.request.contextPath }/showInwaderList" class="list-group-item list-group-item-action bg-light">Invader Register</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Toggle Item</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Disable Item or exist</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">Status</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
       <!--  <button class="btn btn-primary" id="menu-toggle">Menu</button> -->
         
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <!-- <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li> -->
            
          <!--   <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li> -->
            <li class="nav-item active">
           <a href="${pageContext.request.contextPath }/logout">Logout</a>
            </li>
          </ul>
        </div>
      </nav>
      <br>
     <br>
     <br>
      <div class="container-fluid">
     <form action="addService" method="post" modelAttribute="Service">


  <div class="container-fluid">
  <div class="row">
  <div class="col-sm-4">
    <div class="form-group">
      <label for="email">Service Id:</label>
      <input type="text" class="form-control" name="serviceId" id="username">
    </div>
    </div>
    <div class="col-sm-4">
    <div class="form-group">
      <label for="pwd">Service Type:</label>
      <input type="text" class="form-control" name="serviceType" id="pwd">
    </div>
    </div>
    <div class="col-sm-4">
    <div class="form-group">
      <label for="pwd">Service Name:</label>
      <input type="text" class="form-control" name="serviceName" id="pwd">
    </div>
    </div>
     </div>
    <div class="row">
     <div class="col-sm-4">
    <div class="col-sm-4">
    <div class="form-group">
      <label for="pwd">Project Description:</label>
      <input type="text" class="form-control" name="projectDesciption" id="pwd">
    </div>
    </div>
    </div>
    <div class="col-sm-4">
    <div class="form-group">
    <input type="submit" value="Add Service">
    </div>
    </div>
    </div>
    </div>
     </form>
     <br>
     <br>
     <br>
     
     <div class="container-fluid">
     <div class="row">
      <div class="col-sm-4">
     <h2>Service List</h2>
     </div>
      <div class="col-sm-4">
      &nbsp;
     </div>
     <div class="col-sm-4">
    <div class="form-group">
     <input class="form-control" type="text" placeholder="Search" aria-label="Search">
     </div>
     </div>
     </div>
     <div class="row">
    <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Service Name</th>
                <th>Service Description</th>
                <th>Service Type</th>
                <th>Action</th>
                
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td><form>
                 <div class="btn-group" >
                <button type="button" class="btn btn-danger">Delete<i class="icon-plus"></i></button>
                <button type="button" class="btn btn-primary">Update<i class="icon-edit"></i></button>  
                <button type="button" class="btn btn-success">View<i class="icon-trash"></i></button> 
                </div>
                </form></td>
                
            </tr>
            </tbody>
            </table>
            </div>
           </div>
    </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>


</body>
</html>