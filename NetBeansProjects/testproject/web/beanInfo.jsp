<%-- 
    Document   : beanInfo
    Created on : 19 Dec, 2014, 6:48:47 PM
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
        
        
        <jsp:useBean id="empObj" class="myEmp.saveemp"  scope="page" type="myEmp.saveemp"></jsp:useBean>
        
        
        
        <jsp:setProperty name="empObj" property="id" value="2"/>
        
        <jsp:setProperty name="empObj" property="name" value="first"/>
        
        
        
        
        <jsp:getProperty name="empObj" property="id"/>
        <jsp:getProperty name="empObj" property="name"/>
        
        
    </body>
</html>
