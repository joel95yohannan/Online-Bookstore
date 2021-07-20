<%-- 
    Document   : valid
    Created on : Oct 13, 2020, 12:58:14 PM
    Author     : joel yohannan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page: valid</title>
    </head>
    <body>
        <%
          String id = request.getParameter("id");
          String pw = request.getParameter("pw");
          if(id.equals("admin") && pw.equals("000")){
              response.sendRedirect("adminfrontpage.jsp");
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
