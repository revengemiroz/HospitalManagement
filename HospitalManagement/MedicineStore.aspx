<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicineStore.aspx.cs" Inherits="HospitalManagement.MedicineStore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medicine Store</title>
    
        <script src="Scripts/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
		<link href="css/styles.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="top-nav" class="navbar navbar-inverse navbar-static-top">
        <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="#" > medicine panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="Form" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" Text="Log Out" OnClick="DoctorLogOut_Click"  CssClass="btn btn-link"/>
                    
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
      <hr/>
      <div class="panel panel-body panel-success">
      <ul class="nav nav-stacked ">
         <li><a href="Admin.aspx"><i class="glyphicon glyphicon-flash"></i> Main Page</a></li>
        <li><a href="NewAccount.aspx"><i class="glyphicon glyphicon-link"></i> Create new user</a></li>
        <li><a href="AdminMails.aspx"><i class="glyphicon glyphicon-list-alt"></i> View Message</a></li>
        
          <li><a href="MedicineStore.aspx"><i class="glyphicon glyphicon-cloud"></i> Add Medicine in the store</a></li>
      </ul>
      
      
      </div>
                    <hr/>
  	</div>
<div class="col-sm-9">

    <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i>  Add Medicine to the store</h3>  
    <hr />
    <div class="row">
        <div class="col-md-12">
              <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              </div>
              <hr/>
            <div class="col-md-5">

                <asp:Label ID="Label1" runat="server" Text="Medicine Name"></asp:Label>
        <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFirst" runat="server" CssClass="alert-danger"
             ControlToValidate="Name" ErrorMessage="Fill Details here"></asp:RequiredFieldValidator>
        <br />

                 <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="Description" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredLast" runat="server" CssClass="alert-danger"
             ControlToValidate="Description" ErrorMessage="Fill Details here"></asp:RequiredFieldValidator>
        <br />
        <br />

                 <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
        <asp:TextBox ID="Price" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="alert-danger"
             ControlToValidate="Price" ErrorMessage="Fill Details here"></asp:RequiredFieldValidator>
        <br />
        <br />
                
                 <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
        <asp:TextBox ID="Quan" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert-danger"
             ControlToValidate="Quan" ErrorMessage="Fill Details here"></asp:RequiredFieldValidator>
        <br />
        <br />

                <asp:Button ID="create" runat="server" Text="Create" OnClick="create_Click" cssclass=" btn btn-primary" />
               
                <div class="col-sm-3">
                <button class="btn btn-info" type="reset" >Reset</button>
            <br />
            <br />
            <br />
                    </div>
                
                

            </div>
       
        <div class="col-md-7">
            <asp:FileUpload  CssClass="jumbotron" ID="imgUpload" runat="server"  Width="300px"/>
            <asp:RequiredFieldValidator ID="imgMed" runat="server" CssClass="alert-danger"
                 ControlToValidate="imgUpload" ErrorMessage="Choose an image"></asp:RequiredFieldValidator>
        <br />
            </div>


        </div>


    </div>


</div>



            </div>
           







    </form>
</body>
</html>
