﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="HospitalManagement.Message" %>

<!DOCTYPE html>

<html lang="en">
	<head>
		
		<title>Doctor Control Panel</title>
		
		
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
      
      <h3 class="text-center"><i class="glyphicon glyphicon-briefcase"></i> MENU</h3>
      <hr>
      <div class="panel panel-body panel-warning">
      <ul class="nav nav-stacked ">
       <li><a href="Doctor.aspx"><i class="glyphicon glyphicon-link"></i> Main Page</a></li>
        <li><a href="Docpatient.aspx"><i class="glyphicon glyphicon-flash"></i> Patient details</a></li>
        <li><a href="NewPatientDocForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New patient</a></li>
        <li><a href="Message.aspx"><i class="glyphicon glyphicon-link"></i> Send message</a></li>
          <li><a href="MessageView.aspx"><i class="glyphicon glyphicon-link"></i> View messages</a></li>
          <li><a href="Reportform.aspx"><i class="glyphicon glyphicon-link"></i> Create A Report</a></li>
          <li><a href="ReportView.aspx"><i class="glyphicon glyphicon-link"></i> View Reports</a></li>
        
      </ul>
      </div>
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> SEND MESSAGE</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
                  
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-4">
              
                <asp:Label ID="Label1" runat="server" Text="TO :"></asp:Label>
                <asp:DropDownList ID="reciever" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="valuechanged">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Reception</asp:ListItem>
                </asp:DropDownList>
                <br />
                
                 <br />
                <asp:Label ID="Label1111" runat="server" Text="Name of the recepient :"></asp:Label>
                 <asp:DropDownList ID="doctorname" runat="server" AutoPostBack="true" OnSelectedIndexChanged="doctorchanged" Enabled="true" CssClass="form-control" ToolTip="your username">

                 </asp:DropDownList>  
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
  
  
  
  

    </div>
</form>
</body>
</html>

