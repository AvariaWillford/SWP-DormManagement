package StudentController;

import DAO.DAOBed;
import model.bedByDorm;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "BedDetails", urlPatterns = {"/BedDetails"})
public class BedDetails extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int dormID = Integer.parseInt(request.getParameter("dormID"));
        DAOBed daoBed = new DAOBed();
        List<bedByDorm> beds = daoBed.getBedsByDormID(dormID);
        request.setAttribute("beds", beds);
        request.getRequestDispatcher("/ForStudent/Bed/BedDetails.jsp").forward(request, response);
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
}
