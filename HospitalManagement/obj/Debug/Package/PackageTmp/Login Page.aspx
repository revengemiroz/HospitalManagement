<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="HospitalManagement.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log-in page</title>
    <script src="Scripts/jquery-1.6.4.js"></script>
    <script src="Scripts/jquery-1.6.4.min.js"></script>
    <script src="Scripts/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <%--<script src="js/bootstrap.min.js"></script>--%>
    <link href="css/bootstrap.css" rel="stylesheet" />
    
        
        <script type="text/javascript">
            function openModal() {
                $('#AlertModal').modal('show');
            }
            function openModal2() {
                $('#AlertModal2').modal('show');
            }
            function openModala() {
                $('#AlertModala').modal('show');
            }
            function openModal2a() {
                $('#AlertModal2a').modal('show');
            }
</script>

</head>
<body >
<form  runat="server">
    
        <div class="navbar"></div>
        <div class="container">
          <div class="jumbotron">
        <h1>Welcome to Log in page</h1>
        </div>
  </div>
    
    
 <div class="container">
     <div id="AlertModal" class="modal fade">
                <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                        <h3>Log-in failed!</h3>
                 <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     Incorrect user details! try again..
                    </div>
                     </div>
                
            
        </div>
    </div>
</div>
        <div id="AlertModal2" class="modal fade">
                <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                        <h3>Log-in failed!</h3>
                 <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     No such User exist!
                    </div>
                     </div>
                
            
        </div>
    </div>
</div>    
     
     <div id="AlertModala" class="modal fade">
                <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                        <h3>Log-in failed!</h3>
                 <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     No admin rights to this user! try again..
                    </div>
                     </div>
                
            
        </div>
    </div>
</div>
        <div id="AlertModal2a" class="modal fade">
                <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                        <h3>Log-in failed!</h3>
                 <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                     No such User exist!
                    </div>
                     </div>
                
            
        </div>
    </div>
</div>       
        
     <div class="modal fade" id="Logmodal" data-backdrop="static">
            <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Log-In  !</h4>
            </div>
            <div class="modal-body">
                 
            </div>
        </div>
    </div>
        </div>
          
            <div class="col-md-5">
            <h3>For Members log-in</h3> 
    
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

                    <asp:Label ID="Label" runat="server" Text="Username"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="UsernameID" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="Usernamevalidate" runat="server"
                         ErrorMessage="Enter User ID" ValidationGroup="UserLog"
                          ControlToValidate="UsernameID" CssClass="alert-danger"
                         Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="pass" runat="server" Text="Password"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="PasswordID" TextMode="Password" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                     &nbsp;
                    <asp:RequiredFieldValidator ID="passwordvalidate" runat="server"
                         ErrorMessage="Enter Password" ValidationGroup="UserLog"
                          ControlToValidate="PasswordID" CssClass="alert-danger"
                         Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                <asp:DropDownList ID="jobLp" runat="server" CssClass="form-control">
            
            <asp:ListItem Value="Select">Select</asp:ListItem>
            
            <asp:ListItem Value="Doctor">Doctor</asp:ListItem>
            <asp:ListItem Value="Reception">Reception</asp:ListItem>
            
            </asp:DropDownList>
        
            <asp:RequiredFieldValidator ID="RequiredJobID" runat="server" ErrorMessage="Select a job" ValidationGroup="UserLog"
                 InitialValue="Select" CssClass="alert-danger" ControlToValidate="jobLp"></asp:RequiredFieldValidator>
        <br />
                <br />
                    <asp:Button ID="B1" runat="server" Text="Log in" CssClass="btn btn-primary" ValidationGroup="UserLog"  OnClick="B1_Click" />
                    <button class="btn btn-info" type="reset">Reset</button>
            </div>

    <div class="col-md-5">
         <h3>For admin log-in</h3>
        <br />
        <asp:DropDownList ID="jobAdmin" runat="server" Visible="False">
                   <asp:ListItem Selected="True" Value="Admin"></asp:ListItem>
               </asp:DropDownList>
               <br />                
 
                <asp:Label ID="adminlabel" runat="server" Text="Admin ID"></asp:Label>
                    <asp:TextBox ID="AdminID" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                    &nbsp;

                    <asp:RequiredFieldValidator ID="RequiredAdID" runat="server" ValidationGroup="AdminLog"
                         ErrorMessage="Enter your ID" ControlToValidate="AdminID" CssClass="alert-danger">

                    </asp:RequiredFieldValidator>
                    <br />
                    
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Adminpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                     &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredPass" runat="server" ValidationGroup="AdminLog"
                         ErrorMessage="Enter your password" CssClass="alert-danger" ControlToValidate="Adminpass"></asp:RequiredFieldValidator>

                    <br />


               <asp:Button ID="AdminButton" runat="server" Text="Log in" CssClass="btn btn-primary" 
                   ValidationGroup="AdminLog" OnClick="AdminButton_Click" />
            </div>
            <div class="modal-footer">
                <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                

       <%-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Logmodal">Click here</button>--%>
                
                    
        
            </div>

        
      </div> 
    </form>
    
    
        

    
            
</body>
</html>

