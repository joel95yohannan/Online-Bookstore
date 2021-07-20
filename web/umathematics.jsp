<%-- 
    Document   : umathematics
    Created on : Nov 16, 2020, 2:16:55 AM
    Author     : joel yohannan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

div.footer {
   position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}


div.img{
    width: 1300px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .login-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
  width:120px;
}

.topnav .login-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: #555;
  color: white;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .login-container button:hover {
  background-color: green;
}

@media screen and (max-width: 1080px) {
  .topnav .login-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .login-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="ufrontpage.jsp">Home</a>
  <a href="about.jsp">About</a>
  
  <div class="login-container">
     <a class="active" href="cart1.jsp">Cart</a> 
    <a class="active" href="commonlogout.jsp">Logout</a> 
      <a class="active" href="login.jsp">Admin</a>
  </div>
</div>

<div>
                
    <br><u><font size="4" color="black"><a class="active" href="ufrontpage.jsp">Categories</a></u> - <u><a class="active" href="umathematics.jsp">Mathematics</a></u></font><br><br>
                
            <br><br>
            &nbsp
            <div class="img">
            <form action="ubasic.jsp" method="post" >
            <input type="image" id="alg" alt="Basic" src="bmath3.JPG" width="1200" height="250">
            </form>
                </div>
            <div class="img">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <form action="uengg.jsp" method="post">
            <input type="image" id="bd" alt="Engineering" src="em3.JPG" width="1200" height="250">
            </form>
            
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            </div>
            <br>
            <div class="img">
            <form action="usummit.jsp" method="post">
            <input type="image" id="math" alt="Summit" src="sm3.JPG" width="1200" height="250">    
               
        </form>  
            </div>
            </div>
    <br><br>
    
    
    </body>
    <div class="footer">
        <br>
  <p>&#174; JY</p>
  <p>THE ONLINE BOOKSTORE</p>
  <p>providing books to satisfy your eyes, train your brain and refresh your heart</p>
  <br>
</div>
</html>
