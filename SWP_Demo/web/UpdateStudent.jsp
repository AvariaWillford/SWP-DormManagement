<%-- 
    Document   : UpdateStudent
    Created on : May 26, 2024, 1:57:17 PM
    Author     : trant
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,java.util.List,model.student"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            
            List<student> list = (ArrayList<student>) request.getAttribute("list");
            student obj = list.get(0);
        %>
        <form action="manageStudent" method="post">
            <table>
                <tr>
                    <td>Roll Name</td>
                    <td><input type="text" name="rollName" id=""value="<%=obj.getRollName()%>" readonly></td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullname" id=""value="<%=obj.getFullname()%>"></td>
                </tr>
                <tr>
                    <td>Campus</td>
                    <td><input type="text" name="campus" id=""value="<%=obj.getCampus()%>"></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="phoneNumber" id=""value="<%=obj.getPhoneNumber()%>"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="text" name="gender" id=""value="<%=obj.getGender()%>"></td>
                </tr>
                <tr>
                    <td>Term</td>
                    <td><input type="text" name="term" id=""value="<%=obj.getTerm()%>">
                    </td>
                </tr>
                <tr>
                    <td>Balance</td>
                    <td><input type="text" name="balance" id=""value="<%=obj.getBalance()%>">
                    </td>
                </tr>
                <tr>
                    <td>Gmail</td>
                    <td><input type="text" name="gmail" id=""value="<%=obj.getGmail()%>" readonly>
                    </td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="submit" value="Update Student"></td>
                    <td><input type="reset" value="reset"></td>
                <input type="hidden" name="service" value="updateStudent">
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </form>
    </body>
</html>
