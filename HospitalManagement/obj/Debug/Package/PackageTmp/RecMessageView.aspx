<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecMessageView.aspx.cs" Inherits="HospitalManagement.RecMessageView" %>

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
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="RMVName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" Text="Log Out" CssClass="btn btn-link"
                     OnClick="RMVLogOut_Click1" />
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
        <li><a href="RecMessage.aspx"><i class="glyphicon glyphicon-link"></i> Write to doctor</a></li>
        <li><a href="NewPatientRecForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New patient form</a></li>
          <li><a href="RecMessageView.aspx"><i class="glyphicon glyphicon-link"></i> view messages</a></li>
        
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
                
              
			    <asp:SqlDataSource ID="RecmessageData" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" DeleteCommand="DELETE FROM [Messages] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Messages] ([Recieve], [Sender], [Message]) VALUES (@Recieve, @Sender, @Message)" SelectCommand="SELECT * FROM [Messages] ORDER BY [Id]" UpdateCommand="UPDATE [Messages] SET [Recieve] = @Recieve, [Sender] = @Sender, [Message] = @Message WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Recieve" Type="String" />
                        <asp:Parameter Name="Sender" Type="String" />
                        <asp:Parameter Name="Message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Recieve" Type="String" />
                        <asp:Parameter Name="Sender" Type="String" />
                        <asp:Parameter Name="Message" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView12" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="RecmessageData" CssClass="table table-bordered table-hover">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Recieve" HeaderText="Recieve" SortExpression="Recieve" />
                        <asp:BoundField DataField="Sender" HeaderText="Sender" SortExpression="Sender" />
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
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
