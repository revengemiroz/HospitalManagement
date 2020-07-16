﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="HospitalManagement.Message" %>

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
<form runat="server">

<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="#">Doctor Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="DName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" Text="Log Out" CssClass="btn btn-link"
                     OnClick="DmessLogOut_Click1" />
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
      
      <h3><i class="glyphicon glyphicon-briefcase"></i> Toolbox</h3>
      <hr>
      
      <ul class="nav nav-stacked ">
       <li><a href="Doctor.aspx"><i class="glyphicon glyphicon-link"></i> Main Page</a></li>
        <li><a href="Docpatient.aspx"><i class="glyphicon glyphicon-flash"></i> Patient details</a></li>
        <li><a href="NewPatientDocForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New patient</a></li>
          <li><a href="#"><i class="glyphicon glyphicon-flash"></i> Send Messages</a></li>
          <li><a href="#"><i class="glyphicon glyphicon-flash"></i> Check messages</a></li>
        
        
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
              
                <asp:Label ID="Label1" runat="server" Text="TO :"></asp:Label>
                <asp:DropDownList ID="reciever" runat="server" CssClass="form-control">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Reception</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                     ErrorMessage="select the reciever" ControlToValidate="reciever" CssClass="alert-danger" 
                    InitialValue="select"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="From :"></asp:Label>
                <br />
                <asp:TextBox ID="userBox" runat="server" Enabled="false" CssClass="form-control" ToolTip="your username"></asp:TextBox>  
                <br />

                <br />
                <asp:Label ID="Label3" runat="server" Text="Enter your message"></asp:Label>
                <br />
                <asp:TextBox ID="Messbox" runat="server" TextMode="MultiLine" CssClass="form-control" MaxLength="200"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                     ErrorMessage="Enter your message" ControlToValidate="Messbox" CssClass="alert-danger"></asp:RequiredFieldValidator>
			    <br />
                <br />
                <asp:Button ID="SendButton" runat="server" Text="Send" CssClass="btn btn-primary" OnClick="SendButton_Click" />
                <button type="reset" class="btn btn-info">Reset</button>
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
</form>
</body>
</html>

