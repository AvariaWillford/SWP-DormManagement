<%-- 
    Document   : test3
    Created on : Jun 6, 2024, 7:58:18 PM
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
          <form action="changepass">
           Enter New Password: <input type="text" name="newpass">
           Confirm Password: <input type="text" name="repass">
           <h4>${message}</h4>
           <input type='submit'  value='Submit'/>
        </form>
           <a href="login.jsp">Return to main page</a>
    </body>
</html>
