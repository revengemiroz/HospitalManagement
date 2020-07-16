<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Work.aspx.cs" Inherits="HospitalManagement.Work" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>work Page</title>
    <script src="Scripts/jquery-1.6.4.js"></script>
    <script src="Scripts/jquery-1.6.4.min.js"></script>
    <script src="Scripts/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 307px">

    <nav class="navbar navbar-default ">
   <div class="container">
            <div class="navbar-header">
                
                <a class="navbar-brand" href="Home.aspx"><a href="#" class="pull-left">

                    <img src="Pictures/Kanirma.png" alt="Kanirma" height="50"/>
                                                         </a>
                </a>
              
                <div class="navbar navbar-right">
                    <asp:Button ID="logOut" runat="server" Text="log out" CssClass="btn btn-primary" OnClick="logOut_Click" />   
            </div>
           
            </div>
        </div>
 </nav> 

        <br />
        <br />
        <br />
        <br />

        <br />

        <asp:Label ID="Label" runat="server" Text="Label"></asp:Label>



    </div>
    </form>
</body>
</html>
