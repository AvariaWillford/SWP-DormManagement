<%-- 
    Document   : addDormResident
    Created on : Jun 8, 2024, 8:48:52 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,java.util.List,model.student,model.DormResident"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <form action="manageStudent" method="post">
            <table>
                <tr>
                    <td>Roll Name</td>
                    <td><input type="text" name="rollName" id=""></td>

                </tr>
                <tr>
                    <td>Bed Name</td>
                    <td><input type="text" name="bedName" id=""></td>
                <tr>
                    <td><input type="submit" name="submit" value="Add to Dorm"></td>
                    <td><input type="reset" value="reset"></td>
                <input type="hidden" name="service" value="addDormResident">

                </tr>
            </table>
    </form>
    </body>
</html>
