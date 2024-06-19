<%-- 
    Document   : StudentHome
    Created on : May 25, 2024, 6:36:43 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,java.util.List,model.student"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%String titlePage =(String)request.getAttribute("page");
        %>
        <title><%=titlePage%></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="resources/css/studenthome.css">
        <!--        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>-->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script type="text/javascript" src="${jakarta.servlet.jsp.PageContext}resources/script/managestudent.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body>
        <div class="page-wrapper">


            <aside class="menu-sidebar d-none d-lg-block" style="background-image: url(resources/img/back2.png);">
                <div class="logo">
                    <a href="StudentHome.jsp">
                        <img src="resources/img/fptuni.png" style="width:100%"; alt="FPT logo">
                    </a>
                </div>
                <div class="menu-sidebar__content js-scrollbar1 ps">
                    <nav class="navbar-sidebar">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="dashboard-link" href="StudentHome.jsp">Home</a>
                                <a class="dashboard-link" href="#">News</a>
                                <!--                                <a class="dashboard-link" href="Request.jsp"></a>-->
                                <a class="dashboard-link" href="StudentRequest.jsp">Send Request</a>

                            </li>

                        </ul>
                    </nav>
                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                        <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;">

                        </div>

                    </div>
                    <div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>

                    </div>
                </div>
            </aside>
            <div class="page-container">
                <header class="header-desktop">
                    <div class="section__content section__content--p30" style="margin-top: 15px">
                        <div class="container-fluid">
                            <div class="header-wrap">



                                <a href="logout" class="logout-link" >
                                    <i class=""></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="main-content">
                    <div class="section__content section__content--p30">

                        <div class="container-fluid">
                            <div class="col-md-4"></div>
                            <div class="col-md-4"></div>
                            <div class="col-md-4 " style="">
                                <div class="SHome-personal-info">
                                    Personal Information
                                </div>



                                <div class="Shome-info-container">
                                    <div style="width: 120px; height: 120px; background-color: var(--orange-color); border-radius: 100%;">
                                        <img src="resources/img/anhthe.jpg" alt=""/>
                                    </div>
                                    <div class="Shome-info">
                                        <table class="info-card">
                                            <tr>
                                                <td style="color: #006cba;font-weight: bold">Ten Hoc Sinh: </td>
                                                <td style="font-weight: bold">${sessionScope.std.fullname}</td>
                                            </tr>
                                         
                                           
                                            <tr>
                                                <td style="color: #006cba;font-weight: bold">Gender: </td>
                                                <td style="font-weight: bold">${sessionScope.std.gender}</td>
                                            </tr>
                                           
                                            <tr>
                                                <td style="color: #006cba;font-weight: bold">Balance: </td>
                                                <td style="font-weight: bold">${sessionScope.std.balance}</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #006cba;font-weight: bold">Gmail: </td>
                                                <td style="font-weight: bold">${sessionScope.std.gmail}</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #006cba;font-weight: bold">Bed Name: </td>
                                                <td style="font-weight: bold">
                                                    <c:if test="${empty sessionScope.bName.bedName}">
                                                        N/A
                                                    </c:if>
                                                    <c:if test="${not empty sessionScope.bName.bedName}">
                                                        ${sessionScope.bName.bedName}
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>


                            </div>





                            <div class="">


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>