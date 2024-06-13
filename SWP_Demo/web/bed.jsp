<%-- 
    Document   : bed
    Created on : Jun 11, 2024, 9:51:03 PM
    Author     : anhem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.bed, model.room" %>
    <!DOCTYPE html>
<html>
<head>
    <title>Search Bed or Room</title>
       <link rel="stylesheet" type="text/css" href="css/searchBedorRoom.css">
</head>
<body>
<h1>Search Bed or Room</h1>

<form action="bed" method="post">
    <label for="type">Type:</label>
    <select name="type" id="type">
        <option value="bed">Bed</option>
        <option value="room">Room</option>
    </select><br><br>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name"><br><br>
    <input type="submit" value="Search">
</form>

<%
    bed bedResult = (bed) request.getAttribute("bedResult");
    room roomResult = (room) request.getAttribute("roomResult");

    if (bedResult != null) {
%>
    <h2>Bed Search Result</h2>
    <table border="1">
        <tr>
            <th>Bed Name</th>
            <th>Status</th>
            <th>Price</th>
        </tr>
        <tr>
            <td><%= bedResult.getBedName() %></td>
            <td><%= bedResult.getStatus() == 1 ? "Occupied" : "Available" %></td>
            <td><%= bedResult.getPrice() %></td>
        </tr>
    </table>
<%
    } else if (roomResult != null) {
%>
    <h2>Room Search Result</h2>
    <table border="1">
        <tr>
            <th>Room Name</th>
            <th>Dorm Name</th>
        </tr>
        <tr>
            <td><%= roomResult.getRoomName() %></td>
            <td><%= roomResult.getDormName() %></td>
        </tr>
    </table>
<%
    } else if (request.getParameter("name") != null) {
%>
    <p>No result found.</p>
<%
    }
%>

</body>
</html>