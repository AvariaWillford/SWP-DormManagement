<%-- 
    Document   : test2
    Created on : May 22, 2024, 2:51:19 AM
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
        <form action="VerifyCode">
           Enter OTP: <input type="text" name="code">
           <h4>${message}</h4>
           <input type='submit'  value='Submit'/>
        </form>

    </body>
</html>
