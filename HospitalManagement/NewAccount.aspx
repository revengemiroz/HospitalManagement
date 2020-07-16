<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="HospitalManagement.NewAccount" %>

<!DOCTYPE html>

<html lang="en">
	<head>
		
		<title>ADMIN Control Panel</title>
		
		
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
      <a class="navbar-brand" href="#">New User Form</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="Form" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" Text="Log Out"  OnClick="LogOut_Click1"  CssClass="btn btn-link"/>
                    
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
      
      <h3 class="text-center"><i class="glyphicon glyphicon-briefcase "></i> MENU</h3>
      <hr>
      <div class="panel panel-body panel-success">
      <ul class="nav nav-stacked ">
         <li><a href="Admin.aspx"><i class="glyphicon glyphicon-flash"></i> Main Page</a></li>
        <li><a href="NewAccount.aspx"><i class="glyphicon glyphicon-link"></i> Create new user</a></li>
        <li><a href="AdminMails.aspx"><i class="glyphicon glyphicon-list-alt"></i> View Message</a></li>
        
          <li><a href="MedicineStore.aspx"><i class="glyphicon glyphicon-cloud"></i> Add Medicine in the store</a></li>
      </ul>
      
      <hr>
      </div>
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i>  Registration</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
                  
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-5">

                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="First" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFirst" runat="server" CssClass="alert-danger"
             ControlToValidate="First" ErrorMessage="Fill Details here"></asp:RequiredFieldValidator>
        <br />


        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="Last" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredLast" runat="server" CssClass="alert-danger"
             ControlToValidate="Last" ErrorMessage="Fill Details here"></asp:RequiredFieldValidator>
        <br />
        <br />
        

        <asp:Label ID="Label7" runat="server" Text="Choose apllicant's job"></asp:Label>
            

        <asp:DropDownList ID="jobID" runat="server" CssClass="form-control">         
            <asp:ListItem Value="Select">Select</asp:ListItem>  
            <asp:ListItem Value="Doctor">Doctor</asp:ListItem>
            <asp:ListItem Value="Reception">Reception</asp:ListItem>
            <asp:ListItem Value="Admin">Admin</asp:ListItem>
            </asp:DropDownList>
        
            <asp:RequiredFieldValidator ID="RequiredJob" runat="server" ErrorMessage="Select a Job"
                 InitialValue="Select" CssClass="alert-danger" ControlToValidate="jobID"></asp:RequiredFieldValidator>
        
            <br />
            <br />
        
                 <asp:Label ID="des" runat="server" Text="Description"></asp:Label>
                <asp:TextBox ID="DescriptionID" runat="server" CssClass="form-control"></asp:TextBox>
                
               <br />


        <asp:Label ID="Label6" runat="server" Text=" Email ID"></asp:Label>
        <asp:TextBox ID="EmailID"  runat="server" CssClass="form-control"></asp:TextBox><br />
        <asp:RegularExpressionValidator ID="RegularEmail" runat="server" CssClass="alert-danger"
             ErrorMessage="Invalid Email ID" ControlToValidate="EmailID"
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
        </asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
             ErrorMessage="Enter Email ID"  ControlToValidate="EmailID" CssClass="alert-danger"></asp:RequiredFieldValidator>
        


               
        </div>

        <div class="col-md-5">
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
             
        <asp:TextBox ID="UID" runat="server" CssClass="form-control" Height="32px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredUID" runat="server" CssClass="alert-danger"
            ControlToValidate="UID" ErrorMessage="Fill Details here"></asp:RequiredFieldValidator>
        <br />
           

        <asp:Label ID="Label4" runat="server" Text="New password"></asp:Label>
        <asp:TextBox ID="newpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredNewpass" runat="server"
             ErrorMessage="Enter a Password" ControlToValidate="newpass" CssClass="alert-danger"></asp:RequiredFieldValidator>
        <br />


        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="conpass" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:CompareValidator ID="ComparePass" runat="server" CssClass="alert-danger"
             ErrorMessage="Password dont match" ControlToCompare="newpass"
             ControlToValidate="conpass"></asp:CompareValidator>
        <br />
        <br />
            <div class="row">
                
        <asp:Button ID="create" runat="server" Text="Create" cssclass=" btn btn-primary" OnClick="create_Click"/>
                <div class="col-sm-3">
                <button class="btn btn-info" type="reset" >Reset</button>
            <br />
            <br />
            <br />
                    </div>
                </div>
            <asp:FileUpload  CssClass="jumbotron" ID="imgUpload" runat="server"  Width="300px"/>
        <br />
            
        </div>
        
     
       </div>
     </div>
  	</div>
    
  </div>
  
  
  
  

    </div>
</form>
</body>
</html>
