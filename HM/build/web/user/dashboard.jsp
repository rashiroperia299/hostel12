<%-- 
    Document   : dashboard
    Created on : 26 Mar, 2019, 1:50:58 PM
    Author     : Rashi Roperia
--%>

<%@page import="chitkara.dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        
        
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
 <link rel="stylesheet" href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
      
      .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  .google{
   		    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		    background: #df4930;
    	    padding: 8px 21px;
		    color: white;
		    text-decoration: none;
            border-radius: 5px; 
   	}
        a{
            text-decoration: none;
        }
        a:hover{
            color:white;
        }
   	.google i{
   		    text-decoration: none;
		    font-size: 15px;
		    color: #e01515;
		    padding: 4px 8px 5px 7px;
		    box-sizing: border-box;
		    background: white;
		    margin-left: -11px;
		    border-radius: 3px;
   	}
	.facebook{
		    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		    background: #3b5998;
		    color: white;
	    	padding: 8px 21px;
		    text-decoration: none;
		    border-radius: 5px; 
	}
   	.facebook i{
   		    text-decoration: none;
		    font-size: 15px;
		    color: #3a66ad;
		    padding: 4px 8px 5px 7px;
		    box-sizing: border-box;
		    background: white;
		    margin-left: -11px;
		    border-radius: 3px;
   	}
   	.left{
        margin: 32px;
	    position: relative;
	    width: 40%;
	    float: left;
	    text-align: center;
   	}
        .left_google i{
   		float: left;
   	}
   	.left_google a{
            text-decoration: none;
	    width: 30%;
    	display: inline-block;  
    	text-align: center;
    	line-height: 1.5;
   	}
   	.left_google a:last-child{
			margin-top: 20px;
   	} 
 .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
   .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  
  .left_google{
      position: relative;
      right: 55px;
  }
  #myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}
  </style>
  <script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
</head>

 <body style="height:1500px">
     <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>
     <div class="container-fluid" style="background-color:#2f3640;position:fixed;">
         <center><h1><font color="white">Hostel Management System</font></h1></center>
         <ul class="nav navbar-nav navbar-right">
      <li><a href="Login.html"><span class="glyphicon glyphicon-log-out"></span></a></li>
    </ul>
     </div>
<nav class="navbar bg-dark navbar-dark" style="z-index: 1; position: fixed;">
    <a class="navbar-brand" href="#" style=" " i class="far fa-id-card"><img src="index.png"  style="height:22px;" ></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="Login.html"><i class="glyphicon glyphicon-log-out"  style="color: white;font-size: 25px;">Logout</i></a></li>
    </ul>
    <nav class="navbar navbar-expand-sm bgk nabvar-dark">
  <ul class="navbar-nav">
    <li class="nav-item">
      
    </li>
  </ul>
    </nav>
  
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
  <ul class="navbar-nav">
    
    <li class="nav-item">
      <a class="nav-link" href="dashboard.jsp">Dashboard</a>
    </li>
 
    <li class="nav-item">
      <a class="nav-link" href="profile.jsp">Profile<i class='far fa-id-card'></i></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="addComplaint.jsp">Complaint</a>
    </li>
  </ul>
</nav>
<br>

<div id="demo" class="carousel slide" data-ride="carousel" style="top:32px;">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="11.jpg" alt="Hostel" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Hostel Rooms</h3>
       
      </div>
    </div>
    <div class="carousel-item">
      <img src="13.jpg" alt="Hostel" width="100" height="500">
      <div class="carousel-caption">
        </p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="11.jpg" alt="Hostel" width="1100" height="500">
      <div class="carousel-caption">
<!--       <h3>The Best Place</h3>-->
       
      </div>
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev" style="z-index:-1">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<div class="container-fluid">
    
    
    
    <br>
    <br>
    <br>
   
</div>
<div class="clear">
    
</div>
<div class="jumbotron text-center" style="margin-bottom:0; height:30%">
  
<div class="footer">
    <div class="wrap">
        <div class="foot-logo">
       

        <div class="foot-links">
             <ul style="list-style: none;float: left;">
                 <h3>Links</h3>
                 <li>
                     <a href="dashboard.jsp">Dashboard</a>
                 </li>
                 <li>
                     <a href="profile.jsp">  Profile</a>
                 </li>
                 <li>
                     <a href="addComplaint.jsp">Complaint</a>
                 </li>
            </ul>
             <div class="left_google">
                 <ul class="social">
                
               <a class = "google" href="#">
                   <i class="fa fa-google">
                   </i>Continue with Google</a><br>
               <a class= "facebook" href="#">
                   <i class="fa fa-facebook">
                   </i>Continue with Facebook</a>

    </div>
        </div>
        </div>
</div>
</div>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
</footer>
<div class="copyright text-center mt-3">
<!--    <div class="container-fluid" style="background-color:#2f3640;position:fixed;">
         <center><h1><font color="white">Design by:Rashi Roperia</font></h1></center>
     </div>-->
<p class="text-light"  style="background-color:#2f3640;height:100%; position:relative;height:80%">Design by:Rashi Roperia</p>
<div class="left">
</div>
</body>
</html>

        
        
  
 <%--   
  <body>
        
        <h2> <%=user.getFirst_name()+" "+user.getLast_name()%> </h2>
        <h2> <%=user.getUid()%> </h2>
        
        
       
        <div>
             <form action="profile.jsp" method="post">
             <div> <button class="btn default">Profile</button></div>
        </div>
        <br>
               <a href="addComplaint.jsp">Add Complaint</a>
        
    </body> 
</html> 
--%>