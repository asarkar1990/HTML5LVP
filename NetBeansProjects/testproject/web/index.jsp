<%-- 
    Document   : newjsp
    Created on : 19 Dec, 2014, 6:17:07 PM
    Author     : arindam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@include file="newhtml.html" %>        
        <form method="post" action="newjsp1.jsp">
            Employee Id: <input type="text" name="id">
            Employee Name: <input type="text" name="ename">
        <input type="submit" value="Save"/>
        </form>
        
        
        
        
        
        
    </body>
</html>
