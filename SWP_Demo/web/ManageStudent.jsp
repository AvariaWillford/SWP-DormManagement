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
        <div class="page-wrapper">

            <aside class="menu-sidebar d-none d-lg-block" style="background-image: url(resources/img/back2.png);">
                <div class="logo">
                    <a href="#">
                        <img src="resources/img/fptuni.png" style="width:100%"; alt="FPT logo">
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1 ps">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="dashboard-link" href="#">Dashboard</a>
                                <a class="dashboard-link" href="#">Dashboard</a>
                                <a class="dashboard-link" href="#">Dashboard</a>
                                <a class="dashboard-link" href="#">Dashboard</a>

                            </li>

                        </ul>
                    </nav>
                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
            </aside>
            <div class="page-container">
                <header class="header-desktop">
                    <div class="section__content section__content--p30" style="margin-top: 15px">
                        <div class="container-fluid">
                            <div class="header-wrap">
                                <form class="form-header "action="manageStudent" method="get" >
                                    <input class="au-input au-input--xl"type="text" name="rollName" class="" placeholder="Search for student roll number...">
                                    <input type="submit" name="submit" class="au-btn--submit"value="Search" >
                                </form>


                                <a href="#" class="logout-link">
                                    <i class=""></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">


                            <a href="manageStudent?service=listAllDormStudent" class="button-link">Show Dorm Resident Info</a>

                            <div class="col-lg-9">
                                <div class="table-responsive table--no-card m-b-30" style="margin-top: 50px">

                                    <table class="table table-borderless table-striped table-dom" >
                                        <%
                                            String titleTable =(String)request.getAttribute("titleTable");
                                        %>

                                        <thead>
                                            <tr class="">
                                                <th>Roll Name</td>
                                                <th>Full Name</td>
                                                <th>Campus</td>
                                                <th>Phone Number</td>
                                                <th>Gender</td>
                                                <th>Term</td>
                                                <th>Balance</td>
                                                <th>Gmail</td>
                                                <th>Update</td>
                                                <th>Delete</td>
                                            </tr>
                                        </thead>
                                        <%
                                              List<student> list = (ArrayList<student>)request.getAttribute("data");
                                              for (student obj:list){
                                        %>
                                        <tr class="">
                                            <td><%=obj.getRollName()%></td>
                                            <td><%=obj.getFullname()%></td>
                                            <td><%=obj.getCampus()%></td>
                                            <td><%=obj.getPhoneNumber()%></td>
                                            <td><%=obj.getGender()%></td>
                                            <td><%=obj.getTerm()%></td>
                                            <td><%=obj.getBalance()%></td>
                                            <td><%=obj.getGmail()%></td>
                                            <td><a href="manageStudent?service=updateStudent&rollName=<%=obj.getRollName()%>" class="general-link">Update</a></td>
                                            <td><a href="manageStudent?service=deleteStudent&rollName=<%=obj.getRollName()%>" class="general-link">Delete</a></td>
                                        </tr>
                                        <%}%>


                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </body>
</html>


