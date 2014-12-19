<%-- 
    Document   : errorPage
    Created on : 19 Dec, 2014, 6:25:56 PM
    Author     : arindam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Some error Occured</h1>
        <%=exception.toString()%>
        
    </body>
</html>
