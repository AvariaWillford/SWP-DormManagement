<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Update Student</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resources/css/updatestudent.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/updatestudent.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body style="background-image: url(resources/img/back3.png)">
        <c:set var="bed" value="${list.get(0)}" />
        <form action="UpdateBed" method="post">
            <table>
                <tr>
                    <td>Bed Name</td>
                    <td><input type="text" name="bedName" value="${bed.bedName}" class="modal-input-value-noborder" readonly></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td><input type="text" name="status" value="${bed.status}" class="modal-input-value-noborder" readonly></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" value="${bed.price}" class="modal-input-value-noborder" ></td>
                </tr>
                <tr>
                    <td>Room</td>
                    <td><input type="text" name="roomName" value="${bed.roomName}" class="modal-input-value-noborder" readonly></td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="submit" value="UpdateBed" class="modal-input"></td>
                    <input type="hidden" name="service" value="updateBed">
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </form>
    </body>
</html>