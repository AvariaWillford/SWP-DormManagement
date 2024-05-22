<%-- 
    Document   : signupAccount
    Created on : May 22, 2024, 3:18:44 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin-left: 500px; margin-top: 200px"> 
            <form action="registerAccount" method="post">
                <table style="border: 5px solid blue">
                    <tr>
                        <td style="text-align: center">Gmail</td>
                        <td><input type="text" name="gmail" id=""></td>
                    </tr>
                    
                    <tr style="text-align: center">
                        <td>Password</td>
                        <td><input type="text" name="password" id=""></td>
                    </tr>
               
                    <tr style="text-align: center">
                        <td><input type="submit" name="submit" value="Register"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
