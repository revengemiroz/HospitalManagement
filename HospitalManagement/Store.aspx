﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="HospitalManagement.Store" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Medicine Store</title>
    
        <script src="Scripts/jquery-1.11.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
		<link href="css/styles.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="top-nav" class="navbar navbar-inverse navbar-static-top">
        <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-toggle"></span>
      </button>
      <a class="navbar-brand" href="Home.aspx" > Home</a>
        <a class=" navbar-brand" href="Store.aspx">Medicine store</a>
        <a class=" navbar-brand" href="staffdetails.aspx">Staff Details</a>
    </div>


    
      <ul class="nav navbar-nav navbar-right">
        
        <li class="dropdown">
          <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
            <i class="glyphicon glyphicon-cog"></i> <asp:Label ID="Form" runat="server"
                 Text="Store"></asp:Label> <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
            
          
               
                    
           
           
          </ul>
        </li>
      </ul>
    </div>
  </div>
   </div>
           
        <div class="row">
    <div class="container">

        <small class=" well well-sm text-center text-warning text-uppercase ">Note: deletion of the medicine has to be done manuually through the database</small>
         <h3 class="text-center text-danger">Current Medicine Available in the store</h3> 
        
    <br />
        <br />
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:KanirmaConnections %>" DeleteCommand="DELETE FROM [Medicine] WHERE [Id]=@Id" SelectCommand="SELECT [Id],[Name],[Description],[Qty],[Price],[ImageData] FROM [Medicine]">
              <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int64" />
                    </DeleteParameters>
        </asp:SqlDataSource>
      
        <asp:GridView ID="GridView1" runat="server"  AllowPaging="True"
            CssClass="table table-bordered" AllowSorting="true" AutoGenerateColumns="False"  AutoGenerateDeleteButton="false" DataSourceID="SqlDataSource1"  align="center" Width="751px">
            
            <Columns>
                <asp:BoundField DataField="Id" HeaderStyle-Font-Size="Larger" HeaderText="Id" ItemStyle-HorizontalAlign="Center" ItemStyle-Font-Size="X-Large" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderStyle-Font-Size="Larger" HeaderText="Medicine" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Size="X-Large"  SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-HorizontalAlign="center"   ItemStyle-Font-Size="X-Large" />
                 <asp:BoundField DataField="Qty" HeaderStyle-Font-Size="Larger" HeaderText="Quantity" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Size="X-Large"  SortExpression="Qty" />
                 <asp:BoundField DataField="Price" HeaderStyle-Font-Size="Larger" HeaderText="Price (Rs.)" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Size="X-Large"  SortExpression="Price" />
                
                <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="100px"  ImageAlign="Middle"  Width="100px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    +   Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
               
             
            </Columns>
        </asp:GridView>
         </div>



            </div>



    </form>
</body>
</html>
