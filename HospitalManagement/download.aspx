<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="HospitalManagement.download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>


    </title>
    
        <script src="Scripts/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/styles.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
      <div id="top-nav" class="navbar navbar-inverse navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="#">RECEPTION Panel</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        
      
          
           
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
           <li><a href="Reception.aspx"><i class="glyphicon glyphicon-bookmark"></i> Main Menu</a></li>
      <li><a href="Recpatient.aspx"><i class="glyphicon glyphicon-flash"></i> Patients records</a></li>
        <li><a href="RecMessage.aspx"><i class="glyphicon glyphicon-link"></i> Send messages</a></li>
        <li><a href="NewPatientRecForm.aspx"><i class="glyphicon glyphicon-list-alt"></i> New patient form</a></li>
          <li><a href="RecMessageView.aspx"><i class="glyphicon glyphicon-link"></i> View messages</a></li>
            <li><a href="download.aspx"><i class="glyphicon glyphicon-link"></i> Upload Reports</a></li>
      
      </ul>
      </div>
      <hr>
      
  	</div>

                 <div class="col-sm-9">
                     <h4 class=" text-center"><i class="glyphicon glyphicon-book"></i>  Uploading files for admin</h4>   
                         <hr />
                 <div class="row">
        <div class="container">
            <br />
            <div class="col-md-6">
                  
			  <div class="well text-danger">
                  <asp:Label runat="server" Text="Browse Files Here :"></asp:Label>
                  <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="pull-right"/></div>
                   
                <asp:Button ID="btnUpload"  CssClass="pull-right" OnClientClick="return confirm('Are you sure you want to upload this file?');" runat="server" Text="Upload" OnClick="Upload" />
               
              
        

            <br />
            <br />
            <br />
                <div class="col-md-8">
<asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#393c3d" HeaderStyle-Height="30px" HeaderStyle-ForeColor="WhiteSmoke"
                                             RowStyle-BackColor="#777b7c"   RowStyle-Height="30px" RowStyle-ForeColor="WhiteSmoke"
                                            AlternatingRowStyle-BackColor="#777b7c" AlternatingRowStyle-ForeColor="WhiteSmoke"
    AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="File Name" HeaderStyle-CssClass="text-center"/>
       
        <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
            <ItemTemplate>
                <asp:LinkButton Width="100px" ForeColor="WhiteSmoke" ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                    CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
                    </div>
            </div>
        </div>
            </div>
                     </div>
                </div>
            </div>
    </form>
</body>
</html>
