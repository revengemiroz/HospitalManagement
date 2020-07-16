<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPatientDocForm.aspx.cs" Inherits="HospitalManagement.NewPatientDocForm" %>

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
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="DocForm" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" OnClick="DocLogOut_Click1" Text="Log Out" CssClass="btn btn-link"/>
                      
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
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> NEW PATIENT FORM</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
                  
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-7">
                <asp:Label ID="PatientName" runat="server" Text="Patients Name"></asp:Label>
                <asp:TextBox ID="patID" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="Namevalid" runat="server"
                     ErrorMessage="Enter the name" CssClass="alert-danger" ControlToValidate="patID"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="PatientAge" runat="server" Text="Age"></asp:Label>
                <asp:TextBox ID="patage" runat="server" CssClass="form-control" MaxLength="3"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="agevalid" runat="server"
                     ErrorMessage="Enter the Age" CssClass="alert-danger" ControlToValidate="patage"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeAge" runat="server" ControlToValidate="patage" CssClass="alert-danger" ErrorMessage="Improper age" MaximumValue="110" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="patAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="addvalid" runat="server" 
                    ErrorMessage="Enter the address" CssClass="alert-danger" ControlToValidate="patAddress"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="patCity" runat="server" CssClass="form-control" MaxLength="15"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="cityvalid" runat="server" 
                    ErrorMessage="Enter the city" CssClass="alert-danger" ControlToValidate="patCity"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Pincode"></asp:Label>
                <asp:TextBox ID="patPin" runat="server" CssClass="form-control" MaxLength="8"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="pinvalid" runat="server"
                     ErrorMessage="Enter a pincode" CssClass="alert-danger" ControlToValidate="patPin"></asp:RequiredFieldValidator>
			</div>
                 <div class="col-md-5">
                     
                     <asp:Label ID="Label2" runat="server" Text="Gender" ></asp:Label>
                     <br />
                     <asp:DropDownList ID="patGender" runat="server" CssClass="form-control">
                         <asp:ListItem>Select Gender</asp:ListItem>
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                         <asp:ListItem>other</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                     <asp:RequiredFieldValidator ID="genvalid" runat="server" 
                         ErrorMessage="Mention a gender" CssClass="alert-danger" ControlToValidate="patGender" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                     <br />
                     <br />
                     <asp:Label ID="Label5" runat="server" Text="Blood group"></asp:Label>
                     <br />
                     <asp:DropDownList ID="patBloodgrp" runat="server" CssClass="form-control">
                         <asp:ListItem>Select </asp:ListItem>
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
                                           
                     <asp:RequiredFieldValidator ID="bgvalid" runat="server" 
                         ErrorMessage="Mention a Blood group" CssClass="alert-danger"  ControlToValidate="patBloodgrp" InitialValue="Select"></asp:RequiredFieldValidator>
                     <br /> 
                     <asp:Label ID="Label6" runat="server" Text="Enter problem in brief"></asp:Label>
                     <asp:TextBox ID="patProblem" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                     <br />
                     <asp:RequiredFieldValidator ID="probvalid" runat="server"
                          ErrorMessage="Enter the problem" CssClass="alert-danger" ControlToValidate="patProblem"></asp:RequiredFieldValidator>
                     <br />
                     <asp:Button ID="NewPatient" runat="server" Text="Submit form" CssClass="btn btn-primary" OnClick="NewPatient_Click" />
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
