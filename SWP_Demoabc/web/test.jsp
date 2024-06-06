<%-- 
    Document   : test
    Created on : May 22, 2024, 2:19:33 AM
    Author     : ptttr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ForgotPassforAdmin">
           Enter gmail: <input type="text" name="user">
           <h4>${message}</h4>
           <input type='submit'  value='Submit'/>
        </form>
    </body>
</html>
