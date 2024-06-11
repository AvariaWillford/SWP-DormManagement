<%-- 
    Document   : bed
    Created on : Jun 11, 2024, 9:51:03 PM
    Author     : anhem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Form</title>
</head>
<body>
    <h2>Search Bed or Room</h2>
    <form action="SearchServlet" method="post">
        <label for="name">Sreach NameBed or nameRoom:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <input type="radio" id="searchBed" name="action" value="searchBed" required>
        <label for="searchBed">Search Bed</label><br>
        
        <input type="radio" id="searchRoom" name="action" value="searchRoom" required>
        <label for="searchRoom">Search Room</label><br><br>
        
        <input type="submit" value="Search">
    </form>
</body>
</html>
