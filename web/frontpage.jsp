<%-- 
    Document   : frontpage
    Created on : Nov 3, 2020, 11:06:51 AM
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
      <a class="active" href="userloginpage.jsp">Login</a> 
      &nbsp <a class="active" href="signup.jsp">Sign-up</a> 
      <a class="active" href="login.jsp">Admin</a> 
    
  </div>
</div>
</section>
<div>
                
    <br><u><font size="4" color="black">Categories</font></u><br><br>
        <br><font size="4" color="black">Select the category of your choice: </font><br><br>
        
            <br><br>
            &nbsp
            
            <center>
                <a href="computer.jsp">
                    
            <input type="image" id="comp" alt="Computer" src="comput.jpg" width="200" height="150">
            
                </a>
            
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <a href="bigdata.jsp">
            <input type="image" id="bd" alt="BigData" src="bigdata.jpg" width="200" height="150">
            </a>
            
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            
            
            
           
                <a href="mathematics.jsp">
            <input type="image" id="math" alt="Mathematics" src="math.jpg" width="200" height="150">    
                </a>
        </form> 
            </center>
</div>
</section>
       
    </body>
    <footer>
    <div class="footer">
        <br>
  <p>&#174; JY</p>
  <p>THE ONLINE BOOKSTORE</p>
  <p>providing books to satisfy your eyes, train your brain and refresh your heart</p>
</div></footer>
</html>
