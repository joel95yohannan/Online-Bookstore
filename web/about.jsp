<%-- 
    Document   : about
    Created on : Nov 16, 2020, 3:26:12 AM
    Author     : joel yohannan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
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
  background-color: black;
  color: #2196F3;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .login-container {
  float: right;
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
 }

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}

IMG.displayed {
    display: block;
    margin-left: auto;
    margin-right: auto 
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin-right: 8px;
  
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>
<div class="topnav">   
  <a class="active" href="javascript:history.back()">Back</a>
</div>
   
    
<div class="about-section">
  <h1>About JY</h1>
  <p>Hello! Thank you for visiting my online bookstore. The store is named JY, which is the initials of my name. This project is built on the MVC model and is my effort at building a web application that is user friendly and is of practical use. I also wanted to use this project to showcase my skills in development. 
  
</div>
    <br><br>


<center>
        
  <img src="j.jpg" alt="Joel" width="300" height="300">  
          <h2>Joel Yohannan</h2>
          <a href="mailto:joel95yohannan@gmail.com" target="_blank" rel="noopener noreferrer">joel95yohannan@gmail.com</a>
          <a href="https://www.linkedin.com/in/jy19"> <br> <br>
                    
            <input type="image" id="mylinkedin" alt="LinkedIn" src="LinkedIn.png" width="25" height="25">
            
                </a>
        </center>
      
    
    
</body>
</html>

