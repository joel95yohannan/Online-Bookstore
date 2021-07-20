<%-- 
    Document   : addbooks
    Created on : Nov 16, 2020, 9:28:00 PM
    Author     : joel yohannan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
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
  background-color: lightgray;
  color: black;
  font-weight: bold;
  padding: 4px;
  text-transform: uppercase;
  font-family: Verdana, Arial, Helvetica, sans-serif;
  font-size: 15px;
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
   
  <a class="active" href="adminfrontpage.jsp">Admin Home</a>    
  <a href="about.jsp">About</a>
  
  <div class="login-container">
     <a class="active" href="commonlogout.jsp">Logout</a> 
    
  </div>
</div>
  </style>        
    </head>
    <body>
    <center>
        <fieldset> 
            <u><font size="4" color="black">New Entry</font></u>  <br>
            <br>
            
            <form action="AddbooksServ" method="post">
                ISBN :   
            <input type="text" name="isbn" placeholder="ISBN">
            &nbsp&nbsp&nbsp Book Name :
            <input type="text" name="book" placeholder="Book Name">
           &nbsp&nbsp&nbsp Author :
            <input type="text" name="author" placeholder="Author">
           &nbsp&nbsp&nbsp Price :
            <input type="text" name="price" placeholder="Price">
            
            
            
            <button type="submit">Add Book</button>
            </form><br>
            <%
           String success = (String)request.getAttribute("success");
        %>   
       &nbsp&nbsp&nbsp&nbsp  ${success}
       
        
        </fieldset>
       
       <fieldset> 
           <u><b><font size="4" color="black">Remove Book</font></b></u>  <br>
            
            <br>
            
            <form action="RemovebooksServ" method="post">
                ISBN :   
            <input type="text" name="risbn" placeholder="ISBN">            
            
            
            <button type="submit">Remove Book</button>
            </form><br>
            <%
           String rem = (String)request.getAttribute("rem");
        %>   
       &nbsp&nbsp&nbsp&nbsp  ${rem}
       
        
        </fieldset>
       
       <br><br>
       <fieldset>
           <br><font size="4" color="black">Book Inventory</font><br><br>   
        
                
        <%
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/obstore?useSSL=false","root","St@rs21873");
        Statement st=con.createStatement();
        Statement st2=con.createStatement();
        ResultSet rs=st.executeQuery("select * from booklistview;");
        
    %><table border=1 align=center style="text-align:center">
      <thead>
          <tr>
      <th>ISBN</th>
             <th>Book Name</th>
             <th>Author</th>
             <th>Price</th>           
              
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("isbn") %></td>
                <td><%=rs.getString("bookName") %></td>
                <td><%=rs.getString("Author") %></td>
                <td><%=rs.getString("price") %></td>                
                
                
            </tr>
            <%}%>
                       
            
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    
    %>
        <br><br>
           
           
           
       </fieldset>
        
        </center>
    </body>
    <div class="footer">
        <br>
  <p>&#174; JY</p>
  <p>THE ONLINE BOOKSTORE</p>
  <p>providing books to satisfy your eyes, train your brain and refresh your heart</p>
  <br>
</div>
</html>
