<%-- 
    Document   : ViewStudent
    Created on : May 26, 2024, 1:44:14 PM
    Author     : trant
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,java.util.List,model.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%String titlePage =(String)request.getAttribute("page");
        %>
        <title><%=titlePage%></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="resources/css/managestudent.css">
        <!--        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>-->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="${jakarta.servlet.jsp.PageContext}resources/script/managestudent.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body>
        <div class="page-wrapper">


            <aside class="menu-sidebar d-none d-lg-block" style="background-image: url(resources/img/back2.png);">
                <div class="logo">
                    <a href="AdminHome.jsp">
                        <img src="resources/img/fptuni.png" style="width:100%"; alt="FPT logo">
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1 ps">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="dashboard-link" href="manageStudent">Students Information</a>
                                <a class="dashboard-link" href="Dashboard.jsp">Dashboard</a>
                                <a class="dashboard-link" href="manageRequest">Request</a>
                                <a class="dashboard-link" href="manageBed">Manage Bed</a>

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


                                <a href="logout" class="logout-link">
                                    <i class=""></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="main-content">
                    <div class="section__content section__content--p30">

                        <div class="container-fluid">


                            <a href="manageStudent?service=listAllDormStudent" class="button-link">Show Dorm Resident Info</a>
                            <a href="manageStudent?service=listAllStudent" class="button-link">Show All</a>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Add Dorm resident
                            </button>



                            <div class="">

                                <div class="table-responsive table--no-card m-b-30" style="margin-top: 50px">

                                    <table class="table table-borderless table-striped table-dom">
                                        <thead>
                                            <tr>
                                                <th>Roll Name</th>
                                                <th>Full Name</th>
                                                <th>Campus</th>
                                                <th>Phone Number</th>
                                                <th>Gender</th>
                                                <th>Balance</th>
                                                <th>Gmail</th>
                                                <th>Bed</th>
                                                <th>Update</th>
                                                <th>Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${data}" var="obj">
                                                <tr>
                                                    <td>${obj.rollName}</td>
                                                    <td>${obj.fullname}</td>
                                                    <td>${obj.campus}</td>
                                                    <td>${obj.phoneNumber}</td>
                                                    <td>${obj.gender}</td>
                                                    <td>${obj.balance}</td>
                                                    <td>${obj.gmail}</td>
                                                    <td>
                                                        <c:if test="${empty sessionScope.dormResidents.bedName}">
                                                            N/A
                                                        </c:if>
                                                        <c:if test="${not empty sessionScope.dormResidents.bedName}">
                                                            ${sessionScope.dormResidents.bedName}
                                                        </c:if>
                                                    </td>
                                                    <td><a href="manageStudent?service=updateStudent&rollName=${obj.rollName}" class="general-link">Update</a></td>
                                                    <td><a href="manageStudent?service=deleteStudent&rollName=${obj.rollName}" class="general-link">Delete</a></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add to Dorm</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="manageStudent" method="post">
                            <table>
                                <tr>
                                    <td>Roll Name</td>
                                    <td><input type="text" name="rollName" id="" class="modal-input-value"></td>

                                </tr>
                                <tr>
                                    <td>Bed Name</td>
                                    <td><input type="text" name="bedName" id="" class="modal-input-value"></td>
                                <tr>
                                    <td><input type="submit" name="submit" onclick="myalert()" value="Add to Dorm" class="modal-input"></td>
                                    <td><input type="reset" value="Reset input field" class="modal-input" style="margin-left: 20px"></td>
                                <input type="hidden" name="service" value="addDormResident">

                                </tr>
                            </table>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <script>
            function myalert() {
            ${sessionScope.message}
            }
        </script>                           
    </body>
</html>


