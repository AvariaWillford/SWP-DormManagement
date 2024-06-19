<%-- 
    Document   : Request
    Created on : Jun 11, 2024, 8:31:52 PM
    Author     : anhem
--%>


        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.util.ArrayList,java.util.List,model.student"%>
        <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
            <title>SUbmit Request</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" type="text/css" href="resources/css/adminhome.css">
            <!--        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>-->
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
            
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
                                <a class="dashboard-link" href="RequestCreate.jsp">Send Request</a>

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



                                    <a href="logout" class="logout-link" >
                                        <i class=""></i>Logout</a>
                                </div>
                            </div>
                        </div>
                    </header>
                    <div class="main-content">
                        <div class="section__content section__content--p30">

                            <div class="container-fluid">

                                <h1>Submit a Request</h1>
                                <form action="sendRequest" method="post">
                                    <label for="requestType">Request Type:</label>
                                    <select id="requestType" name="requestType" required>
                                        <option value="Đăng Ký ở Dorm">Đăng ký ở dorm</option>
                                        <option value="Thay đổi giường">Thay đổi giường</option>
                                        <option value="Tra phòng KTX">Tra phòng KTX</option>
                                        <!-- Add more options as needed -->
                                    </select>
                                    <br><br>

                                    <label for="rollName">Roll Name:</label>
                                    <input type="text" id="rollName" name="rollName" value="" required><br><br>

                                    <label for="requestDetail">Request Detail:</label>
                                    <textarea id="requestDetail" name="requestDetail" rows="4" cols="50" required></textarea><br><br>

                                    <input type="submit" onclick="myalert()" value="Submit Request">
                                </form>



                                <div class="">


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </body>
         <script>
        function myalert() {
            alert("Submit Request Succesfully");
        }
    </script>
    </html>

