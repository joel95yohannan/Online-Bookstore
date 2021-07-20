<%-- 
    Document   : categorypage
    Created on : Nov 8, 2020, 6:28:44 PM
    Author     : joel yohannan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
  request.setCharacterEncoding("ISO-8859-1");
  String categoryName = (String)request.getAttribute("categoryName");
  String categoryBook = (String)request.getAttribute("categoryBook");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page: result</title>
    </head>
    <body>
        <P>
            <%=categoryName %>
            <%=categoryBook %>
        </P>
    </body>
</html>
