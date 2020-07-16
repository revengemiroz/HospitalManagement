﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecMessage.aspx.cs" Inherits="HospitalManagement.RecMessage" %>

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
      <a class="navbar-brand" href="#">Message Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="RecMName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="RMLogOut" runat="server" Text="Log Out" CssClass="btn btn-link"
                     OnClick="RMLogOut_Click1" />
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
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> SEND MESSAGES</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
                  
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-5">
              
                <asp:Label ID="Label10" runat="server" Text="TO :"></asp:Label>
                <asp:DropDownList ID="reciever2" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="valuechanged">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                  <asp:ListItem>Reception</asp:ListItem>
                </asp:DropDownList>

                <br />
                <asp:Label ID="Label1111" runat="server" Text="Name of the recepient :"></asp:Label>
                 <asp:DropDownList ID="doctorname" runat="server" AutoPostBack="true" OnSelectedIndexChanged="doctorchanged" Enabled="true" CssClass="form-control" ToolTip="your username">

                 </asp:DropDownList>  
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator01" runat="server"
                     ErrorMessage="select the reciever" ControlToValidate="reciever2" CssClass="alert-danger" 
                    InitialValue="select"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label02" runat="server" Text="From :"></asp:Label>
                <br />
                <asp:TextBox ID="userBox2" runat="server" Enabled="false" CssClass="form-control" ToolTip="your username"></asp:TextBox>  
                <br />

                <br />
                <asp:Label ID="Label03" runat="server" Text="Enter your message"></asp:Label>
                <br />
                <asp:TextBox ID="Messbox2" runat="server" TextMode="MultiLine" CssClass="form-control" MaxLength="200"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator02" runat="server"
                     ErrorMessage="Enter your message" ControlToValidate="Messbox2" CssClass="alert-danger"></asp:RequiredFieldValidator>
			    <br />
                <br />
                <asp:Button ID="SendButton2" runat="server" Text="Send" CssClass="btn btn-primary" OnClick="SendButton2_Click" />
                <button type="reset" class="btn btn-info">Reset</button>
			</div>
     
       </div>
     </div>
  	</div>
    
  </div>
  
  
  
  

    </div>
</form>
</body>
</html>
