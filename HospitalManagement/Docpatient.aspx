<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Docpatient.aspx.cs" Inherits="HospitalManagement.Docpatient" %>

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
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="DPName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="DoctorLogOut_Click1" CssClass="btn btn-link" /> 

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
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> Patient Details</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-12">
              
                <asp:SqlDataSource ID="PatientData" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" DeleteCommand="DELETE FROM [Patients] WHERE [PatientID] = @PatientID" InsertCommand="INSERT INTO [Patients] ([Name], [Age], [Gender], [BG], [problem]) VALUES (@Name, @Age, @Gender, @BG, @problem)" SelectCommand="SELECT [PatientID], [Name], [Age], [Gender], [BG], [problem] FROM [Patients] ORDER BY [PatientID]" UpdateCommand="UPDATE [Patients] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [BG] = @BG, [problem] = @problem WHERE [PatientID] = @PatientID">
                    <DeleteParameters>
                        <asp:Parameter Name="PatientID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="BG" Type="String" />
                        <asp:Parameter Name="problem" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="BG" Type="String" />
                        <asp:Parameter Name="problem" Type="String" />
                        <asp:Parameter Name="PatientID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="PatientID"   DataSourceID="PatientData">
                    <Columns>
                         <asp:TemplateField >
                         <ItemTemplate>
                             <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" Visible="true" OnClientClick="return confirm('Are you sure?');" />
                             <asp:Button ID="Button2" runat="server" CommandName="Edit" Text="Edit"  />
                            <asp:Button ID="deletebtn" runat="server" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');" />

                             </ItemTemplate>
                    </asp:TemplateField>    
                        <asp:BoundField DataField="PatientID" HeaderText="PatientID" InsertVisible="False" ReadOnly="True" SortExpression="PatientID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="BG" HeaderText="BG" SortExpression="BG" />
                        <asp:BoundField DataField="problem" HeaderText="Problem" SortExpression="problem" />
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
