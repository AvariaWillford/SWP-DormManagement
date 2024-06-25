<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bed Details</title>
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
        <h1>Bed Details</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Bed ID</th>
                    <th>Status</th>
                    <th>Price</th>
                    <th>Room Name</th>
                    <th>Empty Beds in Room</th>
                    <th>Total Beds in Room</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${beds}" var="bed">
                    <tr>
                        <td>${bed.bedID}</td>
                        <td><c:choose>
                            <c:when test="${bed.status == 1}">Occupied</c:when>
                            <c:otherwise>Available</c:otherwise>
                        </c:choose></td>
                        <td>${bed.price}</td>
                        <td>${bed.roomName}</td>
                        <td>${bed.emptyBeds}</td>
                        <td>${bed.totalBeds}</td>
                        <td>
                            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#bookModal" data-bedid="${bed.bedID}">Book</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
    <!-- Modal -->
    <div class="modal fade" id="bookModal" tabindex="-1" aria-labelledby="bookModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="bookModalLabel">Book Bed</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="bookBedForm" action="BookBed" method="post">
                        <input type="hidden" name="bedID" id="modalBedID">
                        <div class="mb-3">
                            <label for="rollName" class="form-label">Roll Name</label>
                            <input type="text" class="form-control" id="rollName" name="rollName" required>
                        </div>
                        <div class="mb-3">
                            <label for="requestDetail" class="form-label">Request Details</label>
                            <textarea class="form-control" id="requestDetail" name="requestDetail" rows="3" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit Request</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var bookModal = document.getElementById('bookModal');
        bookModal.addEventListener('show.bs.modal', function (event) {
            var button = event.relatedTarget;
            var bedID = button.getAttribute('data-bedid');
            var modalBedID = document.getElementById('modalBedID');
            modalBedID.value = bedID;
        });
    </script>
</body>
</html>
