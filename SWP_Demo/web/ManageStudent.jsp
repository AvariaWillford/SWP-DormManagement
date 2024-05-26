<%-- 
    Document   : ViewStudent
    Created on : May 26, 2024, 1:44:14 PM
    Author     : trant
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,java.util.List,model.student"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%String titlePage =(String)request.getAttribute("page");
        %>
        <title><%=titlePage%></title>
        
    </head>
    <body>
        <p align="right">
            
        </p>
        <form action="manageStudent" method="get">
            <p>Search Roll Number:<input type="text" name="rollName">
                <input type="submit" name="submit" value="Search">
                <input type="reset" value="Clear">
        </form>
        <table border="1" style="background: lemonchiffon;border-color: black;border-style: solid">
            <%
                String titleTable =(String)request.getAttribute("titleTable");
            %>
            <caption><%=titleTable%></caption>
                       <tr>
                <td>rollName</td>
                <td>fullname</td>
                <td>campus</td>
                <td>phoneNumber</td>
                <td>gender</td>
                <td>term</td>
                <td>balance</td>
                <td>gmail</td>
                <td>update</td>
                <td>delete</td>
            </tr>
            <%
                  List<student> list = (ArrayList<student>)request.getAttribute("data");
                  for (student obj:list){
            %>
            <tr>
                <td><%=obj.getRollName()%></td>
                <td><%=obj.getFullname()%></td>
                <td><%=obj.getCampus()%></td>
                <td><%=obj.getPhoneNumber()%></td>
                <td><%=obj.getGender()%></td>
                <td><%=obj.getTerm()%></td>
                <td><%=obj.getBalance()%></td>
                <td><%=obj.getGmail()%></td>
                <td><a href="manageStudent?service=updateStudent&rollName=<%=obj.getRollName()%>">Update</a></td>
                <td><a href="manageStudent?service=deleteStudent&rollName=<%=obj.getRollName()%>">Delete</a></td>
            </tr>
            <%}%>

       
            
            
   
        </table>
            
    </body>
</html>


