<%-- 
    Document   : uservalid
    Created on : Nov 9, 2020, 10:18:33 PM
    Author     : joel yohannan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page: user valid</title>
    </head>
    <body>
        <%
          String id = request.getParameter("id");
          String pw = request.getParameter("pw");
          if(id.equals("user1") && pw.equals("001")){
              response.sendRedirect("ufrontpage.jsp");
          }//fi
          else if(id.equals("admin") && pw.equals("000")){
              response.sendRedirect("ufrontpage.jsp");
          }//fi
          else{
              out.println("<script>");
              out.println("alert('invalid try again')");
              out.println("history.back()");
              out.println("</script>");
              return;
          }//esle
        %>
    </body>
</html>
