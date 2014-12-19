<%-- 
    Document   : newjsp1
    Created on : 19 Dec, 2014, 6:17:14 PM
    Author     : arindam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorPage.jsp" %>

<% 
    Integer n1= Integer.parseInt( request.getParameter("no1"));
    Integer n2= Integer.parseInt( request.getParameter("no2"));
    Integer result= n1/n2;
    out.println(result);
    
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
