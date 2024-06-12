<%-- 
    Document   : Request
    Created on : Jun 12, 2024, 8:56:21 AM
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
        <select id="requestType" name="requestType" required>
        <option value="Thay đổi phòng">Thay đổi phòng</option>
        <option value="Thay đổi giường">Thay đổi giường</option>
        <option value="Tra phòng KTX">Tra phòng KTX</option>
        <!-- Add more options as needed -->
    </select>
    <br><br>
        
        <label for="rollName">Roll Name:</label>
        <input type="text" id="rollName" name="rollName" required><br><br>
        
        <label for="requestDetail">Request Detail:</label>
        <textarea id="requestDetail" name="requestDetail" rows="4" cols="50" required></textarea><br><br>
        
        <input type="submit" value="Submit Request">
    </form>
</body>
</html>