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
        <link href="resources/css/updatestudent.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="${jakarta.servlet.jsp.PageContext}resources/script/updatestudent.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body style="background-image:url(resources/img/back3.png)">
        <%
            
            List<student> list = (ArrayList<student>) request.getAttribute("list");
            student obj = list.get(0);
        %>
        <form action="manageStudent" method="post">
            <table>
                <tr>
                    <td>Roll Name</td>
                    <td><input type="text" name="rollName" id=""value="<%=obj.getRollName()%>" class="modal-input-value-noborder"readonly></td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="fullname" id=""value="<%=obj.getFullname()%>" class="modal-input-value-noborder"readonly></td>
                </tr>
                <tr>
                    <td>Campus</td>
                    <td><input type="text" name="campus" id=""value="<%=obj.getCampus()%>" class="modal-input-value-noborder"readonly></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="phoneNumber" id=""value="<%=obj.getPhoneNumber()%>" class="modal-input-value-noborder"readonly></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="text" name="gender" id=""value="<%=obj.getGender()%>" class="modal-input-value-noborder"readonly></td>
                </tr>
                <tr>
                    <td>Term</td>
                    <td><input type="text" name="term" id=""value="<%=obj.getTerm()%>" class="modal-input-value-noborder"readonly>
                    </td>
                </tr>
                <tr>
                    <td>Balance</td>
                    <td><input type="number" step="0.01" name="balance" id="balance1"value="<%=obj.getBalance()%>"class="modal-input-value" required="">
                    </td>
                </tr>
                <tr>
                    <td>Gmail</td>
                    <td><input type="text" name="gmail" id=""value="<%=obj.getGmail()%>" class="modal-input-value-noborder"readonly>
                    </td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="submit" value="Update Student" class="modal-input"></td>
                    <td> <button id="qty" onclick="deleteClick(balance1)" class="modal-input" style="margin-left: 20px" type="button" data-toggle="tooltip" data-placement="top" title="Delete">Clear</button></td>
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
