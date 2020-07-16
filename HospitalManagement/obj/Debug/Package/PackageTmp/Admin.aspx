<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HospitalManagement.Admin" %>

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
      <a class="navbar-brand" href="#">Admin Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="AdminName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp; <i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="Button1" runat="server" Text="Log Out"  CssClass=" btn-link " OnClick="AdminLogOut_Click1" /> </></li>
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
        <li><a href="Admin.aspx"><i class="glyphicon glyphicon-flash"></i> User detials</a></li>
        <li><a href="NewAccount.aspx"><i class="glyphicon glyphicon-link"></i> Create new user</a></li>
        <li><a href="javascript:;"><i class="glyphicon glyphicon-list-alt"></i>Messages</a></li>
        
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
              
                <asp:SqlDataSource ID="KanirmaSource" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" 
                SelectCommand="SELECT * FROM [UserData]" DeleteCommand="DELETE FROM [UserData] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserData] ([Username], [password], [Email], [job]) VALUES (@Username, @password, @Email, @job)" UpdateCommand="UPDATE [UserData] SET [Username] = @Username, [password] = @password, [Email] = @Email, [job] = @job WHERE [Id] = @Id">
                
            </asp:SqlDataSource>
            
    
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="KanirmaSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="job" HeaderText="job" SortExpression="job" />
                </Columns>
            </asp:GridView>
                
              
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

