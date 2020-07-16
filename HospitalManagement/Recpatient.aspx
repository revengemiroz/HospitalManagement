<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recpatient.aspx.cs" Inherits="HospitalManagement.Recpatient" %>

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
      <a class="navbar-brand" href="#">Reception Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="ReceptionName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="RecLogOut_Click2" CssClass="btn btn-link" /> 

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
          <li><a href="RecMessageView.aspx"><i class="glyphicon glyphicon-link"></i> view messages</a></li>
            <li><a href="download.aspx"><i class="glyphicon glyphicon-link"></i> Upload Reports</a></li>
      
      </ul>
      </div>
      <hr>
      
  	</div>
    <div class="col-sm-9">
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> PATIENT RECORDS</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-6">
                <asp:SqlDataSource ID="ReceptionData" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" DeleteCommand="DELETE FROM [Patients] WHERE [PatientID] = @PatientID" InsertCommand="INSERT INTO [Patients] ([Name], [Age], [Gender], [BG], [problem], [Address], [city], [pincode]) VALUES (@Name, @Age, @Gender, @BG, @problem, @Address, @city, @pincode)" SelectCommand="SELECT * FROM [Patients] ORDER BY [PatientID]" UpdateCommand="UPDATE [Patients] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [BG] = @BG, [problem] = @problem, [Address] = @Address, [city] = @city, [pincode] = @pincode WHERE [PatientID] = @PatientID">
                    <DeleteParameters>
                        <asp:Parameter Name="PatientID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="BG" Type="String" />
                        <asp:Parameter Name="problem" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="pincode" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="BG" Type="String" />
                        <asp:Parameter Name="problem" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="pincode" Type="String" />
                        <asp:Parameter Name="PatientID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PatientID" DataSourceID="ReceptionData" Height="200px" Width="896px">
                    <Columns >
                         <asp:TemplateField >
                         <ItemTemplate>
                             <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" Visible="true" OnClientClick="return confirm('Are you sure?');" />
                             <asp:Button ID="Button2" runat="server" CommandName="Edit" Text="Edit"  />
                            <asp:Button ID="deletebtn" runat="server" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');" />

                             </ItemTemplate>
                    </asp:TemplateField>    
                        <asp:BoundField DataField="PatientID" HeaderText="PatientID" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center"  InsertVisible="False" ReadOnly="True" SortExpression="PatientID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-HorizontalAlign="Center" SortExpression="Name" />
                        <asp:BoundField DataField="Age" HeaderText="Age" ItemStyle-HorizontalAlign="Center" SortExpression="Age" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" ItemStyle-HorizontalAlign="Center" SortExpression="Gender" />
                        <asp:BoundField DataField="BG" HeaderText="BG" ItemStyle-HorizontalAlign="Center" SortExpression="BG" />
                        <asp:BoundField DataField="problem" HeaderText="problem"  SortExpression="problem" />
                        <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-HorizontalAlign="Center" SortExpression="Address" />
                        <asp:BoundField DataField="city"   HeaderStyle-VerticalAlign="Middle"  HeaderText="  city" ItemStyle-HorizontalAlign="Center" SortExpression="city" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" ItemStyle-HorizontalAlign="Center" SortExpression="pincode" />
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
