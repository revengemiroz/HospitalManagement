<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HospitalManagement.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Medicare integrated service</title>
   
    

    <script src="Scripts/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    

   <!-- <script type="text/javascript">
        

        $('.carousel').carousel({
            interval: 1200
        });
        $(window).load(function () {
            $('#Homemodal').modal('show');
        });
        
      </script>-->
   
    
</head>

     
      
    
   
<body onload="window.setTimeout('window.location.reload()',60000);">
 <form runat="server">
         <nav class="navbar navbar-default " role="navigation">
            <div class="navbar-header">
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" 
                    data-target="#menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.aspx"><a href="#" class="pull-left">

                    <img src="Pictures/logo.png" alt="Kanirma" height="70"/>
                                                         </a>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="menu">
                
                    
                <div class="navbar navbar-right">
                    <a href="Login Page.aspx" class="btn btn-primary navbar-btn">Log in</a>&nbsp;&nbsp;
                </div>
            </div>
 </nav>
    
   <div class="container">
 
        </div>
 <br />
 <br />                  
                    
<div class="container">        
<div id="carousel-example-generic" class="carousel slide " data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
  </ol>
 
  
  <div class="carousel-inner  ">
    <div class="item active">
      <img src="Pictures/a.jpg" class="img-responsive center-block"    />
      <div class="carousel-caption">
          <h3>all Smiles</h3>
      </div>
    </div>

      <div class="item" >
      <img src="Pictures/2.jpg" class="img-responsive center-block" width="1500" />
      <div class="carousel-caption">
          <h3>Proper Facilities</h3>
      </div>
    </div>

      <div class="item">
      <img src="Pictures/c.jpg" class="img-responsive center-block"   />
      <div class="carousel-caption">
          <h3>Labour Facilities</h3>
      </div>
    </div>
    <div class="item">
      <img src="Pictures/d.jpg" class="img-responsive center-block"   />
      <div class="carousel-caption">
          <h3>24/7 care support</h3>
      </div>
    </div>
    <div class="item">
      <img  src="Pictures/e.jpg" class="img-responsive center-block"   />
      <div class="carousel-caption">
          <h3>Qualified Surgeons</h3>
      </div>
    </div>
  </div>
      

</div>
</div> 
<br />
<br />
<br />
     <div class="container">

        
        <div class="row">
           
            
             <div class="col-lg-12">    
                <div class="well text-center">
                   
                 <h3 class="page-header text-info text-center">  Bullitean Board           </h3>
                    <asp:Label Text="sda" runat="server" ID="Date"></asp:Label>
                    <br />
                  <div class="col-md-3">
                      <h5>notes: Nothing today </h5>
                  </div>
                      <div class="col-md-3">
                      <h5>Doctor In: Dr Neeraj </h5>
                  </div>
               <div class="col-md-3">
                      <h5>Receptionist In: Miroz </h5>
                  </div>
                      <div class="col-md-3">
                      <h5>Admin in: Admin </h5>
                  </div>
                      
                 
                    <br />
                    <br />
                     
                 </div>
                 </div>

            </div>
         <br />
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="text-center text-primary"><span class="fa fa-fw fa-check"></span>Medicine Store</h4>
                    </div>
                    <div class="panel-body text-center">
                        <p > Check currently avaliable medicine stock in the pharmacy.</p>
                        <br />
                          <asp:Button ID="Button2" runat="server" Text="Click here" CssClass="btn btn-default"  OnClientClick="window.open('Store.aspx');"/>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="text-center text-primary"><span class="fa fa-fw fa-gift"></span> Staff details</h4>
                    </div>
                    <div class="panel-body text-center">
                        <p>Current doctors &amp; Reception avaliable</p>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Click here" CssClass="btn btn-default" OnClientClick="window.open('staffdetails.aspx');"/>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="text-center text-primary"><span class="fa fa-fw fa-compass"></span>Contact Details</h4>
                    </div>
                    <div class="panel-body text-center">
                        <p>Office No. : 27735490/2775591</p>
                        <p>Email : NorwalkHospital@gmail.com</p>
                        <p>Reservations: +977-1-4464878</p>
                        <p> +977-1-4465115</p>
                        <p>E-mail: reservation@yetiairlines.com</p>
                        <p>E-commerce: +977-1-4466576 </p>
                        <p>E-mail: ecommerce@yetiairlines.com</p>
                        <p>Tara Air Reservation :977-1-4488788</p>
                        <p>Head Office Cargo: 977-1-4486157</p>
                    </div>
                </div>
            </div>
        </div>


    <div class="container">
        <div class="modal fade" id="Homemodal" data-backdrop="static">
            <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title text-center text-danger">ATTENTION!</h4>
            </div>
            <div class="modal-body">
                <p class="text-center  text-capitalize">This is a private site for hospital members only</p>
                <p class="text-center"><small class="text-center text-warning">For technically difficulties concult site admin</small></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                
            </div>
        </div>
    </div>
        </div>
    </div>
   </div>         
            
            
             
                    

 
  
            


 </form>   
</body>
</html>
   


