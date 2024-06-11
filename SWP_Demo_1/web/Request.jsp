<%-- 
    Document   : Request
    Created on : Jun 11, 2024, 8:31:52 PM
    Author     : anhem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submit Request</title>
</head>
<body>
    <h1>Submit a Request</h1>
    <form action="submitRequest" method="post">
        <label for="requestType">Request Type:</label>
        <input type="text" id="requestType" name="requestType" required><br><br>
        
        <label for="rollName">Roll Name:</label>
        <input type="text" id="rollName" name="rollName" required><br><br>
        
        <label for="requestDetail">Request Detail:</label>
        <textarea id="requestDetail" name="requestDetail" rows="4" cols="50" required></textarea><br><br>
        
        <input type="submit" value="Submit Request">
    </form>
</body>
</html>