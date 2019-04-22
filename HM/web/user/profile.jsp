<%-- 
    Document   : profile
    Created on : 27 Mar, 2019, 12:33:10 AM
    Author     : Rashi Roperia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.UserDao"%>
<%@page import="chitkara.dao.ProfileDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserDao user=(UserDao)session.getAttribute("user"); %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
       
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style>
      
      body{
          background-image: url(h3.jpg);
          background-repeat: no-repeat;
          background-size:cover;
          /*background-size:2500px 900px;*/
      } 
      
      
  
  .profile{
            position: relative;
            top:100px;
            float:right ;
            right: 150px;
            width: 500px;
            display: inline-flex;
            border: 1px solid #efefef;
            background-color: #fff;
            border-radius: 4px;
            border-bottom: 1px solid #e2e2e2;
            padding: 10px 10px 10px 16px;
        }
        .profile_left{
            float: right;
            width: 155px;
            padding: 4px 1px 0px 0px;
        }
        .profile_left img:hover{
            opacity: .5;
        }
        .profileimage_edit:hover{
            opacity: 1;
        }
        .profile_left img{
            width: 100%;
            border-radius: 50%;
        }
        .profileimage_edit{
            opacity: .1;
            position: relative;
            bottom: 28px;
            border: 1px solid transparent;
            padding: 7px 30px 6px 49px;
            background: rgba(0,0,0,0.5);
            border-radius: 3px;
        }
        .profileimage_edit a{
            text-decoration: none;
            color: white;
            font-family: monospace;
        }
        .profile_mid{
            position: relative;
            top: 10px;
            left: 30px;
            height: 149px;
            width: 230px;
        }
        .profile_mid_name{
            font-family: 'q_serif',Georgia,Times,"Times New Roman","Hiragino Kaku Gothic Pro","Meiryo",serif;
            font-weight: bold;
            line-height: 1.3;
            color: #333;
            font-size: 26px;
        }
        .profile_mid a{
            text-decoration: none;
            line-height: 1.5;
            color: #6669;
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
        }
        .profile_mid a:hover{
            text-decoration: underline;
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
        .container{
            position:relative;
            float:left;
            left:50px;
            color: black;
            font-family:monospace;
            font-size:17px;
            top: 70px;
            width:37%;
            
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
   
   <jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
   
   <body style="height:1500px" >
     <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>
     <div class="container-fluid" style="background-color:#2f3640;position:fixed;">
         <center><h1><font color="white">Hostel Management System</font></h1></center>
         <ul class="nav navbar-nav navbar-right">
      <li><a href="Login.html"><span class="glyphicon glyphicon-log-out"></span></a></li>
    </ul>
     </div>
<nav class="navbar bg-dark navbar-dark" style="z-index: 1;
    
    position: fixed;">
    <a class="navbar-brand" href="#"><img src="index.png"  style="height:22px;" ></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="Login.html"><i class="fa fa-sign-out" style="color: white;font-size: 25px;">Logout</i></a></li>
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
      <a class="nav-link" href="index.html">Dashboard</a>
    </li>
 
    <li class="nav-item">
      <a class="nav-link" href="profile.jsp">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="addComplaint.jsp">Complaint</a>
    </li>
  </ul>
</nav>
     
     <br>
     <br>
  
   
      <div class="container">
  <h2>Profile</h2>
  
  <div class="card" style="width:200px" height:80px;>
    <img class="card-img-top" src="g.jpg" alt="Card image" style="width:100%;height: 80%" >
    <div class="card-body">
      
      
      <a href="#" class="btn btn-primary">Edit Profile</a>
    </div>
  </div>
  <br>
</div>
         <br>
     
   
   
   
   
    
  <%--  <jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
   
    <body> --%>
        
       <%--<h1>Hello ${user.getFirst_name()} </h1>
       --%>
        <div class="container">
            
            <form>
                <% ResultSet rs=c1.showProfile(user.getUid());
                if(rs.next()){
                    %>
                    <div>
                        <label>Name</label><br>
                        <input type="text" value="<%=rs.getString("first_name")+ " "+rs.getString("last_name")%>" readonly>
                    </div><br>
                    <div>
                        <label>UID</label><br>
                        <input type="text" value="<%=rs.getString("uid")%>" readonly>
                    </div><br>
                    <div>
                        <label>Email</label><br>
                        <input type="text" value="<%=rs.getString("email")%>" readonly>
                    </div><br>
                    <div>
                        <label>Mobile Number</label><br>
                        <input type="text" value="<%=rs.getString("mobile_no")%>" readonly>
                    </div><br>
                     <div>
                         <label>Hostel Name</label><br>
                        <input type="text" value="<%=rs.getString("hostel_name")%>" readonly>
                     </div><br>
                     
                     <div>
                         <label>Room No</label><br>
                      <input type="text" value="<%=rs.getString("room_no")%>" readonly></center>
                </div><br>
                     <div>
                             <label>Warden name</label><br>
                        <input type="text" value="<%=rs.getString("warden_name")%>" readonly>
                         
                     </div><br>
                     <div>
                         <label>Batch</label><br>
                        <input type="text" value="<%=rs.getString("batch")%>" readonly>
                     
                        </div><br>
                     <div>
                         <label>Address</label><br>
                        <input type="text" value="<%=rs.getString("address")%>" readonly>
                       </div> 
                      
                <% } %>
                
            </form>
        </div>
        
    </body>
</html>
