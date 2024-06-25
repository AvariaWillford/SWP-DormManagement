package StudentController;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import DAO.DAOrequest;
import model.requests;

public class BookBed extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bedID = Integer.parseInt(request.getParameter("bedID"));
        String rollName = request.getParameter("rollName");
        String requestDetail = request.getParameter("requestDetail");
        int userID = 1; // Assume you get this from session or some other means

        DAOrequest daoRequest = new DAOrequest();
        requests req = new requests();
        req.setRequestType("Bed Booking");
        req.setRollName(rollName);
        req.setRequestDetail(requestDetail);
        req.setUserID(userID);
        daoRequest.addRequest(req);
        
        response.sendRedirect(""); // Redirect to a success or confirmation page
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet for handling bed booking requests";
    }
}
