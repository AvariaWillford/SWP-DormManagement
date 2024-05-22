/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package StudentController;

import DAO.DAOaccount;
import DAO.DAOstudent;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.account;

/**
 *
 * @author lenovo
 */
@WebServlet(name="registerInf", urlPatterns={"/registerInf"})

public class registerInf extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         
      
             String gmail = request.getParameter("gmail");       
             String rollName = request.getParameter("rollname");       
             String fullname = request.getParameter("fullname");       
//             String campus = request.getParameter("choose_campus");       
             String phonenumber = request.getParameter("phonenumber");       
//             String gender = request.getParameter("choose_gender");       
             String term = request.getParameter("term");       
                
             
            DAO.DAOstudent dao = new DAOstudent();
            
            
                //signup
                dao.registerInfomation(gmail, rollName, fullname, phonenumber, term);
                       
            DAO.DAOaccount acc = new DAOaccount();
            account a = acc.checkGmailExists(gmail);
            if (a == null) {
                //signup
                response.sendRedirect("signupInformation.jsp");
            } else {
                //day ve login.jsp
                response.sendRedirect("homepage.jsp");
            }
               
            
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
