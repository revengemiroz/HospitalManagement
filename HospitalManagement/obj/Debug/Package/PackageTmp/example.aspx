<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="example.aspx.cs" Inherits="HospitalManagement.example" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		
		<title>Bootstrap 3 Control Panel</title>
		
		
        <script src="Scripts/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/styles.css" rel="stylesheet">

	</head>

	<body>


<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="#">Admin Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="Name" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            <li><a href="#">My Profile</a></li>
            <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>



<div class="container">
  
  
  <div class="row">
	<div class="col-sm-3">
      
      <h3><i class="glyphicon glyphicon-briefcase"></i> Toolbox</h3>
      <hr>
      
      <ul class="nav nav-stacked ">
        <li><a href="javascript:;"><i class="glyphicon glyphicon-flash"></i> Alerts</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-link"></i> Links</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-list-alt"></i> Reports</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-book"></i> Books</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-briefcase"></i> Tools</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-time"></i> Real-time</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-plus"></i> Advanced..</a></li>
      </ul>
      
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3><i class="glyphicon glyphicon-dashboard"></i> Dashboard</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-7">
			  <div class="well">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-5">
              
                
              
			</div>
     
       </div>
     </div>
  	</div>
    
  </div>
  
  
  
  <div class="row">
    
    <div class="col-md-12">
      <hr>
      <a href="#"><strong><i class="glyphicon glyphicon-list-alt"></i> Reports</strong></a>  
      <hr>    
    </div>
    
</div>

    </div>

</body>
</html>
