<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPatientRecForm.aspx.cs" Inherits="HospitalManagement.NewPatientRecForm" %>

<!DOCTYPE html>

<html lang="en">
	<head>
		
		<title>New Patient</title>
		
		
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
      <a class="navbar-brand" href="#">New Patient Form</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="RecForm" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" OnClick="RecLogOut_Click1" Text="Log Out" CssClass="btn btn-link"/>
                      
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
        <li><a href="Recpatient.aspx"><i class="glyphicon glyphicon-flash"></i> Patients records</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-link"></i> Write to doctor</a></li>
        <li><a href="NewPatientRecForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New patient form</a></li>
        
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
                <asp:Label ID="PatientName" runat="server" Text="Patients Name"></asp:Label>
                <asp:TextBox ID="pID" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Namevali" runat="server"
                     ErrorMessage="Enter the name" CssClass="alert-danger" ControlToValidate="pID"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="LAge" runat="server" Text="Age"></asp:Label>
                <asp:TextBox ID="age" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="agevali" runat="server"
                     ErrorMessage="Enter the Age" CssClass="alert-danger" ControlToValidate="age"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeAge" runat="server" ControlToValidate="age" CssClass="alert-danger" ErrorMessage="Improper age" MaximumValue="110" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="Address" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="addvali" runat="server" 
                    ErrorMessage="Enter the address" CssClass="alert-danger" ControlToValidate="Address"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="City" runat="server" CssClass="form-control" MaxLength="15"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="cityvali" runat="server" 
                    ErrorMessage="Enter the city" CssClass="alert-danger" ControlToValidate="City"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Pincode"></asp:Label>
                <asp:TextBox ID="Pin" runat="server" CssClass="form-control" MaxLength="8"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="pinvali" runat="server"
                     ErrorMessage="Enter a pincode" CssClass="alert-danger" ControlToValidate="Pin"></asp:RequiredFieldValidator>
			</div>
                 <div class="col-md-5">
                     
                     <asp:Label ID="Label2" runat="server" Text="Gender" ></asp:Label>
                     <br />
                     <asp:DropDownList ID="Gender" runat="server" CssClass="form-control">
                         <asp:ListItem>Select Gender</asp:ListItem>
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                         <asp:ListItem>other</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                     <asp:RequiredFieldValidator ID="genvali" runat="server" 
                         ErrorMessage="Mention a gender" CssClass="alert-danger" ControlToValidate="Gender" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                     <br />
                     <asp:Label ID="Label5" runat="server" Text="Blood group"></asp:Label>
                     <br />
                     <asp:DropDownList ID="Bloodgrp" runat="server" CssClass="form-control">
                         <asp:ListItem>select </asp:ListItem>
                         <asp:ListItem>A+</asp:ListItem>
                         <asp:ListItem>A-</asp:ListItem>
                         <asp:ListItem>B+</asp:ListItem>
                         <asp:ListItem>B-</asp:ListItem>
                         <asp:ListItem>AB+</asp:ListItem>
                         <asp:ListItem>AB-</asp:ListItem>
                         <asp:ListItem>O+</asp:ListItem>
                         <asp:ListItem>O-</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                     <asp:RequiredFieldValidator ID="bgvali" runat="server" 
                         ErrorMessage="Mention a Blodd group" CssClass="alert-danger" ControlToValidate="Bloodgrp" InitialValue="Select"></asp:RequiredFieldValidator>
                     <br />
                     <asp:Label ID="Label6" runat="server" Text="Enter problem in brief"></asp:Label>
                     <asp:TextBox ID="Problem" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                     <br />
                     <asp:RequiredFieldValidator ID="probvali" runat="server"
                          ErrorMessage="Enter the problem" CssClass="alert-danger" ControlToValidate="Problem"></asp:RequiredFieldValidator>
                     <br />
                     <asp:Button ID="NewPat" runat="server" Text="Submit form" CssClass="btn btn-primary" OnClick="NewPat_Click" />
                     <button class="btn btn-default" type="reset">Reset</button>

                 </div>
     
       </div>
     </div>
  	</div>
    
  </div>
  
  
  
  

    </div>
</form>
</body>
</html>
