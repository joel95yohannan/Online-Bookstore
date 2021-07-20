<%-- 
    Document   : login
    Created on : Oct 13, 2020, 12:11:28 PM
    Author     : joel yohannan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page:login</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style type="text/css">

* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

div.label {
  background-color: black;
  color: yellow;
  font-weight: bold;
  padding: 4px;
  text-transform: uppercase;
  font-family: Verdana, Arial, Helvetica, sans-serif;
  font-size: 15px;
}

div.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   
   background-color: black;
   color: white;
   text-align: center;
}


div.img{
    width: 210px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    text-align: center;
}

div.container {
  padding: 10px;
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
   
  <a class="active" href="frontpage.jsp">Home</a>    
  <a href="about.jsp">About</a>
  
  <div class="login-container">
      <a class="active" href="userloginpage.jsp">Login as user</a> 
          
  </div>
  
</div>






  </style>
        <style>
            body {
              background-image: url('jy.jpg');
              background-repeat: no-repeat;
              background-attachment: fixed;
              background-size: cover;
                }
            </style>
    </head>
    <body>
    <center>
        <div class="label">
        <br><font size="6" color="yellow">ADMIN PAGE</font><br><br>
        
        
        
        <form action="valid.jsp">
            <p>
            <label for="uname">Enter your username:</label>    
            <input type="text" id="uname" name="id" placeholder="username"/><br><br>
            <label for="pwd">Enter your password:</label> 
            <input type="password" id="pwd" name="pw" placeholder="password"/><br><br>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input align="center" type="submit" value="login"/>
            </p>
        </form>
        <br><br>
        
        </div>
        </center>
    </body>
</html>
