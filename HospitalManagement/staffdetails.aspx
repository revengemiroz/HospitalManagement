<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffdetails.aspx.cs" Inherits="HospitalManagement.staffdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff details</title>
   
<script src="Scripts/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class=" navbar navbar-default" role="navigation">
            <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand pull-left" href="#">
                <a href="Home.aspx" class="pull-left">
                    <img src="Pictures/logo.png" alt="" height="150"/>
                </a>
                </a>
            </div>
                </div>
         </nav>
        <br />
       
        
        <div class="row">
    <div class="container">


         <h3 class="text-center">Current Staff Details</h3>      
    
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" SelectCommand="SELECT [UserName],[FirstName],[LastName],[Job],[Description],[ImageData] FROM [staffDetails]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server"
            CssClass="table table-bordered" AllowSorting="true" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="140px" align="center" Width="751px">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderStyle-Font-Size="Larger" HeaderText="Username" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Size="X-Large"  SortExpression="UserName" />
                <asp:BoundField DataField="Job" HeaderText="Job" ItemStyle-HorizontalAlign="center"   ItemStyle-Font-Size="X-Large" SortExpression="Job"/>
                 <asp:BoundField DataField="FirstName" HeaderStyle-Font-Size="Larger" HeaderText="First Name" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Size="X-Large"  SortExpression="FirstName" />
                 <asp:BoundField DataField="LastName" HeaderStyle-Font-Size="Larger" HeaderText="Last Name" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Size="X-Large"  SortExpression="LastName" />
                 <asp:BoundField DataField="Description" HeaderStyle-Font-Size="Larger" HeaderText="Description" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Size="X-Large"  />
                <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="200px"  ImageAlign="Middle"  Width="200px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
               
             
            </Columns>
        </asp:GridView>
         </div>
    </div>
        <br />

        <br />
        


    </form>
</body>
</html>
