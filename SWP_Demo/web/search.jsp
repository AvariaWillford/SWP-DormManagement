<%-- 
    Document   : search
    Created on : Jun 12, 2024, 8:01:23 AM
    Author     : anhem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Room or Bed</title>
</head>
<body>
    <h1>Search Room or Bed</h1>
    <form action="search" method="post">
        <label for="searchType">Search Type:</label>
        <select id="searchType" name="searchType">
            <option value="bed">Bed</option>
            <option value="room">Room</option>
        </select><br>
        <label for="searchValue">Name:</label>
        <input type="text" id="searchValue" name="searchValue" required><br>
        <button type="submit">Search</button>
    </form>

    <hr>

  </body>
</html>
