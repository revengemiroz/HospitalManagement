<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HospitalManagement.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Hospital Management</title>
   
    <%--<script src="Scripts/jquery-1.6.4.js"></script>
    <script src="Scripts/jquery-1.6.4.min.js"></script>--%>

    <script src="Scripts/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    

    <script type="text/javascript">
        

        $('.carousel').carousel({
            interval: 1200
        });
        $(window).load(function () {
            $('#Homemodal').modal('show');
        });
        
      </script>
   
    
</head>

     
      
    
   
<body>
    

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
   <div class="container">
            <div class="navbar-header">
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" 
                    data-target="#menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.aspx"><a href="#" class="pull-left">

                    <img src="Pictures/Kanirma.png" alt="Kanirma" height="50"/>
                                                         </a>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="menu">
                <ul class="nav navbar-nav">
                    <li><a href="#">Link21</a></li>
                    <li><a href="#">Link1</a></li>
                    <li class="dropdown active" >
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Messages
                             <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Inbox</a></li>
                            <li><a href="#">Drafts</a></li>
                            <li><a href="#">Sent Items</a></li>
                          </ul>
                        </li>  
                            
                    <li><a href="#">Link3</a></li>
                </ul>
                    
                <div class="navbar navbar-right">
                    <a href="Login Page.aspx" class="btn btn-primary navbar-btn">Log in</a>
                </div>
            </div>
        </div>
 </nav> 
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
      <img src="Pictures/1.jpg" class="img-responsive center-block"    />
      
    </div>
      <div class="item">
      <img src="Pictures/2.jpg" class="img-responsive center-block"   />
      
    </div>
      <div class="item">
      <img src="Pictures/3.jpg" class="img-responsive center-block"   />
      <div class="carousel-caption">
          <h3>Proper Facilities</h3>
      </div>
    </div>
    <div class="item">
      <img src="Pictures/4.jpg" class="img-responsive center-block"   />
      <div class="carousel-caption">
          <h3>24/7 care support</h3>
      </div>
    </div>
    <div class="item">
      <img  src="Pictures/5.jpg" class="img-responsive center-block"   />
      <div class="carousel-caption">
          <h3>Qualified Surgeons</h3>
      </div>
    </div>
  </div>
      
 <%--<a class=" carousel-control left" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="carousel-control right" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>--%>
</div>
</div> 
<br />
<br />
<br />
     <div class="container">

        
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Welcome to KANIRMA HOSPITAL
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-check"></span> Bootstrap v3.2.0</h4>
                    </div>
                    <div class="panel-body">
                        <p>something</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-gift"></span> Free &amp; Open Source</h4>
                    </div>
                    <div class="panel-body">
                        <p>something</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><span class="fa fa-fw fa-compass"></span> Easy to Use</h4>
                    </div>
                    <div class="panel-body">
                        <p>something</p>
                        <a href="#" class="btn btn-default">Learn More</a>
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
                <h4 class="modal-title">ATTENTION!</h4>
            </div>
            <div class="modal-body">
                <p>This is a private site for hospital members only</p>
                <p class="text-primary"><small>For technically difficulties concult site admin</small></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                
            </div>
        </div>
    </div>
        </div>
    </div>
   </div>         
            
            
             
                    

 
  
            


</body>
</html>
   


