<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Available Beds</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
        }
        h1 {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Available Beds in Dorms</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Total Rooms</th>
                    <th>Available Beds</th>
                    <th>Bed Details</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${dorms}" var="dorm">
                    <tr>
                        <td>${dorm.dormID}</td>
                        <td>${dorm.dormName}</td>
                        <td>${dorm.totalRoom}</td>
                        <td>${dorm.availableBed}</td>
                        <td><a href="BedDetails?dormID=${dorm.dormID}" class="btn btn-primary">View Beds</a></td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>