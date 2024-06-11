/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package AdminController;

import DAO.DAODormResident;
import model.admin;
import model.student;
import DAO.DAOstudent;
import DAO.DAOadmin;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.DormResident;

/**
 *
 * @author trant
 */
@WebServlet(name = "manageStudent", urlPatterns = {"/manageStudent"})
public class manageStudent extends HttpServlet {

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
        DAOstudent dao = new DAOstudent();
        DAODormResident dao1 = new DAODormResident();
        String service = request.getParameter("service");
        HttpSession session = request.getSession(true);
        if (service == null) {
            service = "listAllStudent";
        }

        if (service.equals("updateStudent")) {
            String submit = request.getParameter("submit");
            if (submit == null) {
                List<student> list = (ArrayList<student>)dao.getStudent("select * from Student where rollName = '" + request.getParameter("rollName")+"'") ;
                request.setAttribute("list", list);
                request.getRequestDispatcher("/UpdateStudent.jsp").forward(request, response);

            } else {
                String rollName = request.getParameter("rollName");
                String fullname = request.getParameter("fullname");
                String campus = request.getParameter("campus");
                String phoneNumber = request.getParameter("phoneNumber");
                String gender = request.getParameter("gender");
                String term = request.getParameter("term");
                String balance = request.getParameter("balance");
                String gmail = request.getParameter("gmail");
                //CHECK DATA
                float balance_c = Float.parseFloat(balance);
                String sql = "select * from Student where rollName = '" + rollName +"'";
                List<student> list = dao.getStudent(sql);
                if (list.size() > 0) {
                    //CONVERT
                    
                     
                    //CREATE ENTITY
                    student student = new student(rollName, fullname, campus, phoneNumber, gender, term, balance_c, gmail);
                    dao.updateStudent(student);
                    response.sendRedirect("manageStudent?service=listAllStudent");

                }

            }

        }
        if (service.equals("addDormResident")) {
            String submit = request.getParameter("submit");
            if (submit == null) {
                request.getRequestDispatcher("addDormResident.jsp").forward(request, response);

            } else {
                String rollName = request.getParameter("rollName");
                String bedName = request.getParameter("bedName");
                String sql = ("select * from DormResident where bedName = '" + request.getParameter("bedName") +"'");
                List<DormResident> list = dao1.getDormResident(sql);
                if (list.size() > 0) {
                    response.sendRedirect("manageStudent?service=listAllStudent");
                    return;
                }
                //CONVERT

                //CREATE ENTITY
                dao1.addToDorm(rollName, bedName);
                response.sendRedirect("manageStudent?service=listAllStudent");
            }
        }

        if (service.equals("deleteStudent")) {
            String rollName = request.getParameter("rollName");
            dao1.removeStudent(rollName);
            response.sendRedirect("manageStudent?service=listAllStudent");
        }
        if (service.equals("logout")) {
                session.invalidate();
                response.sendRedirect("index.html");
            }
        
        

        if (service.equals("listAllStudent")) {
            //CHECK SUBMIT
            String submit = request.getParameter("submit");
            List<student> list  = null;
 
            if (submit == null) {
                list = dao.getStudent("select * from Student");
            } else {
                String roll = request.getParameter("rollName");
                list = dao.getStudent("select * from Student where rollName like '%" + roll + "%'");
            }
            
            
            

            String titlePage = "Sutdent Manage";
            String titleTable = "List of Student";
            //SET DATA FOR VIEW

            request.setAttribute("data", list);
            request.setAttribute("page", titlePage);
            request.setAttribute("titleTable", titleTable);
            //SELECT VIEW
            RequestDispatcher dispatch = request.getRequestDispatcher("/ManageStudent.jsp");
            //RUN
            dispatch.forward(request, response);
        }
        
        if (service.equals("listAllDormStudent")) {
            //CHECK SUBMIT
            String submit = request.getParameter("submit");
            List<student> list  = null;

            if (submit == null) {
                list = dao.getStudent("select * from Student where rollName in(select rollName from DormResident);");
            } else {
                String roll = request.getParameter("rollName");
                list = dao.getStudent("select * from Student where rollName like '%" + roll + "%'");
            }
            
            
            

            String titlePage = "Sutdent Manage";
            String titleTable = "List of Student";
            //SET DATA FOR VIEW

            request.setAttribute("data", list);
            request.setAttribute("page", titlePage);
            request.setAttribute("titleTable", titleTable);
            //SELECT VIEW
            RequestDispatcher dispatch = request.getRequestDispatcher("/ManageStudent.jsp");
            //RUN
            dispatch.forward(request, response);
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
