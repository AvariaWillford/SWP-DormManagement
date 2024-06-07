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
        <link rel="stylesheet" type="text/css" href="resources/css/managestudent.css">

    </head>
    <body>
        <p style="float:right; top:-40px"><span><a href="LoginURL?service=logout">Logout</a></span></p>
        <aside class="menu-sidebar d-none d-lg-block" style="background: antiquewhite">
            <div class="logo">
                <a href="#">
                    <img src="resources/img/fptuni.png" style="width:100%"; alt="FPT logo">
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1 ps">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="">Dashboard 1</a>
                                </li>
                                <li>
                                    <a href="">Dashboard 2</a>
                                </li>
                                <li>
                                    <a href="">Dashboard 3</a>
                                </li>
                                <li>
                                    <a href="">Dashboard 4</a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </nav>
                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
        </aside>

        <form action="manageStudent" method="get" style="position: absolute;right: 100px;top: 40px">
            <p>Search Roll Number:<input type="text" name="rollName">
                <input type="submit" name="submit" value="Search">
                <input type="reset" value="Clear">
        </form>
        <table class="table-body" style="position: absolute; right:250px">
            <%
                String titleTable =(String)request.getAttribute("titleTable");
            %>

            <caption class="caption-title"><%=titleTable%></caption>
            <tr class="table-head">
                <td>Roll Name</td>
                <td>Full Name</td>
                <td>Campus</td>
                <td>Phone Number</td>
                <td>Gender</td>
                <td>Term</td>
                <td>Balance</td>
                <td>Gmail</td>
                <td>Update</td>
                <td>Delete</td>
            </tr>
            <%
                  List<student> list = (ArrayList<student>)request.getAttribute("data");
                  for (student obj:list){
            %>
            <tr class="row">
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


