<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportform.aspx.cs" Inherits="HospitalManagement.Reportform" %>

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
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="reportName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" Text="Log Out" CssClass="btn btn-link"
                     OnClick="ReportLogOut_Click1" />
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
      
      <h3 class="text-center"><i class=" glyphicon glyphicon-briefcase"></i> MENU</h3>
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
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> CREATE A REPORT</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
                  
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" SelectCommand="SELECT [Name] FROM [Patients]"></asp:SqlDataSource>
                <br />
                <asp:Label ID="Labelname" runat="server" Text="Patient Name"></asp:Label>
                <asp:DropDownList ID="PatientName" runat="server" CssClass="form-control" 
                    DataTextField="Name" DataValueField="Name" DataSourceID="SqlDataSource1"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredPatientName" runat="server"  CssClass="alert-danger"
                    ErrorMessage="Select Patient's Name" ControlToValidate="PatientName"></asp:RequiredFieldValidator>
                <br />
                <br />
                
                <br />
                <asp:Label ID="Labeldisease" runat="server" Text="Name of the Disease"></asp:Label>
                <asp:TextBox ID="TextBoxDisease" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredDisease" runat="server" CssClass="alert-danger"
                     ErrorMessage="Mention the name of disease" ControlToValidate="TextBoxDisease"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Labelsymp" runat="server" Text="Patient's Symptoms"></asp:Label>
                <asp:TextBox ID="Textsymptom" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Requiredsymptoms" runat="server" CssClass="alert-danger"
                     ErrorMessage="Mention Patient's current Symptoms" ControlToValidate="Textsymptom"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Labelexplain" runat="server" Text=" Patients current Disease condition"></asp:Label>
                <asp:TextBox ID="TextBoxcondition" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Requiredcondtion" runat="server" CssClass="alert-danger"
                     ErrorMessage="Explain patent's current condition" ControlToValidate="TextBoxcondition"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Labeladm" runat="server" Text="Patient to be :" ></asp:Label>
                <asp:DropDownList ID="admission" runat="server" CssClass="form-control">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Admitted</asp:ListItem>
                    <asp:ListItem>Discharged</asp:ListItem>
                    <asp:ListItem>non-Admitted</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="Requiredadm" runat="server" CssClass="alert-danger"
                     ErrorMessage="Patient to be?" ControlToValidate="admission" InitialValue="Select"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="ReportButton" runat="server" Text="Submit"  OnClick="ReportButton_Click1" CssClass="btn btn-primary"/>
                <button class="btn btn-info" type="reset">Reset</button>

			</div>
     
       </div>
     </div>
  	</div>
    
  </div>
  
  
  
  

    </div>
</form>
</body>
</html>
