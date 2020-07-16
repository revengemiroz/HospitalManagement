<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportView.aspx.cs" Inherits="HospitalManagement.ReportView" %>

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
            <i class="glyphicon glyphicon-user"></i> <asp:Label ID="RVName" runat="server"
                 Text="Label"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
            <li>&nbsp;<i class="glyphicon glyphicon-lock"></i>
                <asp:Button ID="DoctorLogOut" runat="server" Text="Log Out" CssClass="btn btn-link"
                     OnClick="RVLogOut_Click1" />
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
      	
      	
       <h3 class="text-center"><i class="glyphicon glyphicon-dashboard"></i> VIEW REPORTS</h3>  
            
       <hr>
      
	   <div class="row">
            	
         	<div class="col-md-12">
                  
			  <div class="well text-center text-danger">Remember to log out before exiting the page <span class="badge pull-right">!</span></div>
              
              <hr>
              
              
         
            
        	<div class="col-md-12">
                <asp:SqlDataSource ID="Sqlmess" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" SelectCommand="SELECT * FROM [Reports]" DeleteCommand="DELETE FROM [Reports] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Reports] ([PatientName], [disease], [briefExplain], [symptoms], [Admitted], [Date]) VALUES (@PatientName, @disease, @briefExplain, @symptoms, @Admitted, @Date)" UpdateCommand="UPDATE [Reports] SET [PatientName] = @PatientName, [disease] = @disease, [briefExplain] = @briefExplain, [symptoms] = @symptoms, [Admitted] = @Admitted, [Date] = @Date WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PatientName" Type="String" />
                        <asp:Parameter Name="disease" Type="String" />
                        <asp:Parameter Name="briefExplain" Type="String" />
                        <asp:Parameter Name="symptoms" Type="String" />
                        <asp:Parameter Name="Admitted" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PatientName" Type="String" />
                        <asp:Parameter Name="disease" Type="String" />
                        <asp:Parameter Name="briefExplain" Type="String" />
                        <asp:Parameter Name="symptoms" Type="String" />
                        <asp:Parameter Name="Admitted" Type="String" />
                        <asp:Parameter Name="Date" Type="DateTime" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Sqlmess">
                    <Columns>
                         <asp:TemplateField >
                         <ItemTemplate>
                             <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" Visible="true" OnClientClick="return confirm('Are you sure?');" />
                             <asp:Button ID="Button2" runat="server" CommandName="Edit" Text="Edit"  />
                            <asp:Button ID="deletebtn" runat="server" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');" />

                             </ItemTemplate>
                    </asp:TemplateField>    
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                        <asp:BoundField DataField="disease" HeaderText="disease" SortExpression="disease" />
                        <asp:BoundField DataField="briefExplain" HeaderText="briefExplain" SortExpression="briefExplain" />
                        <asp:BoundField DataField="symptoms" HeaderText="symptoms" SortExpression="symptoms" />
                        <asp:BoundField DataField="Admitted" HeaderText="Admitted" SortExpression="Admitted" />
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

