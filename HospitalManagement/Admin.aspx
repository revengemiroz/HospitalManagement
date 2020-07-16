<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HospitalManagement.Admin" %>

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
      
      <h3 class="text-center"><i class="glyphicon glyphicon-briefcase"></i> MENU.</h3>
      <hr>
      <div class="panel panel-body panel-danger">

   
      <ul class="nav nav-stacked ">
        <li><a href="Admin.aspx"><i class="glyphicon glyphicon-flash"></i> Main Page</a></li>
        <li><a href="NewAccount.aspx"><i class="glyphicon glyphicon-link"></i> Create new user</a></li>
        <li><a href="AdminMails.aspx"><i class="glyphicon glyphicon-list-alt"></i> View Message</a></li>
      
          <li><a href="MedicineStore.aspx"><i class="glyphicon glyphicon-cloud"></i> Add Medicine in the store</a></li>
        
      </ul>
         </div>
      <hr>
  	</div>



    <div class="col-sm-9">
      <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-12">
              
                <asp:SqlDataSource ID="KanirmaSource" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" 
                SelectCommand="SELECT [Id],[UserName],[Password],[FirstName],[LastName],[Email],[Job] FROM [staffDetails]" DeleteCommand="DELETE FROM [staffDetails] WHERE [Id] = @Id" InsertCommand="INSERT INTO [staffDetails] ([UserName], [Password], [Email], [job]) VALUES (@Username, @password, @Email, @job)" UpdateCommand="UPDATE [staffDetails] SET [UserName] = @Username, [Password] = @password,[FirstName] = @FirstName,[LastName] = @LastName, [Email] = @Email, [Job] = @job WHERE [Id] = @Id">
                
            </asp:SqlDataSource>
            
    
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="KanirmaSource">
                <Columns>
                    <asp:TemplateField >
                         <ItemTemplate>
                             <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" Visible="true" OnClientClick="return confirm('Are you sure?');" />
                             <asp:Button ID="Button2" runat="server" CommandName="Edit" Text="Edit" />
                            <asp:Button ID="deletebtn" runat="server" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');" />

                             </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="UserName" HeaderText="Username" SortExpression="UserName" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                     <asp:BoundField DataField="FirstName" HeaderText="First name" SortExpression="FirstName" />
                     <asp:BoundField DataField="LastName" HeaderText="Last name" SortExpression="LastName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
                </Columns>
            </asp:GridView>
                
              
		 </div>
       </div>
     </div>
  	</div>
    
  </div>
 </div>

</form>
</body>
</html>

