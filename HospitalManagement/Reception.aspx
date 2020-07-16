<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reception.aspx.cs" Inherits="HospitalManagement.Reception" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		
		<title>Reception Control Panel</title>
		
		
        <script src="Scripts/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/styles.css" rel="stylesheet">

	</head>

	<body>

<form runat="server">

<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="#">Reception Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="ReceptionName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="RecLogOut_Click1" CssClass="btn btn-link" /> 

            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>



<div class="container">
  
  
  <div class="row">
	<div class="col-sm-3">
      
      <h3 class="text-center"><i class="glyphicon glyphicon-briefcase"></i> MENU</h3>
      <hr>
                <div class="panel panel-body panel-danger">
      <ul class="nav nav-stacked ">
          <li><a href="Reception.aspx"><i class="glyphicon glyphicon-bookmark"></i> Main Menu</a></li>
       <li><a href="Recpatient.aspx"><i class="glyphicon glyphicon-flash"></i> Patients records</a></li>
        <li><a href="RecMessage.aspx"><i class="glyphicon glyphicon-link"></i> Send messages</a></li>
        <li><a href="NewPatientRecForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New patient form</a></li>
          <li><a href="RecMessageView.aspx"><i class="glyphicon glyphicon-link"></i> View messages</a></li>
          <li><a href="download.aspx"><i class="glyphicon glyphicon-link"></i> Upload Reports</a></li>
        
      </ul>
    </div>
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> PATIENT RECORDS</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-5">
              
                
              
			</div>
     
       </div>
     </div>
  	</div>
    
  </div>
  
  
  
  
    


    </div>

</form>
</body>
</html>
