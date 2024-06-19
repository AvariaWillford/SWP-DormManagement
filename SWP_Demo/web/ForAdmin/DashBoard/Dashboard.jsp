<%-- 
    Document   : Chart
    Created on : Jun 10, 2024, 10:18:36 PM
    Author     : ptttr
--%>
<%@page import ="DAO.DAODormResident"%>
<%@page import ="DAO.DAOstudent"%>
<%@page import ="model.student"%>
<%@page import ="model.DormResident"%>
<%@page import ="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- load Google AJAX API -->

        <!-- Load Google AJAX API -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // Load the Google Visualization API and the pie chart package.
        google.charts.load('current', {'packages': ['corechart']});

        // Set callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(createChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function createChart() {
           
            
            // Create the data table.
            var dataTable = new google.visualization.DataTable();
            dataTable.addColumn('string', 'Technologies');
            dataTable.addColumn('number', 'Usage');
            
            // Get data from database
            <%
                DAO.DAOstudent daos = new DAOstudent();
                DAO.DAODormResident daod = new DAODormResident();
                int studentCount = daos.getTotalStudent();
                int dormResidentCount = daod.getTotalDormResident();
            %>
            
            dataTable.addRows([
                ['Student not in dorm', <%= studentCount - dormResidentCount %>],
                ['Student in dorm', <%= dormResidentCount %>]
           
            ]);

            // Draw the chart with the current browser window size.
            drawChart();

            // Redraw the chart when the window is resized.
            window.addEventListener('resize', drawChart);

            function drawChart() {
                // Set chart options with dynamic width and height
                var options = {
                    width: window.innerWidth * 0.25,
                    height: window.innerHeight * 0.3,
                    is3D: true,
                   
                };

                // Instantiate and draw the chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('chart'));
                chart.draw(dataTable, options);
            }
        }
    </script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="resources/css/dashboard.css">
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
                                <a class="dashboard-link" href="manageStudent">Students information</a>
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



                                <a href="#" class="logout-link" >
                                    <i class=""></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="main-content">
                    <div class="section__content section__content--p30">

                        <div class="container-fluid">
                            <!--Div for our chart -->
                            <div class="col-lg-6">
                                <div class="au-card m-b-30">
                                    
                                    <div class="au-class-inner">

                                        <h3 class="title-2 m-b-40"> Student distribution</h3> 
                                        <div id="chart" style="width: auto;height: auto;aspect-ratio:auto"></div>
                                        <div class="dashboard-info">Student: <%= studentCount %></div>
                                        <div class="dashboard-info">Student in dorm: <%= dormResidentCount %></div>


                                    </div>
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





    </body>
</html>