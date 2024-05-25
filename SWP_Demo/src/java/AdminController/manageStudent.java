/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package AdminController;

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
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
        String service = request.getParameter("service");
        if (service == null) {
            service = "listAllCustomer";
        }

        if (service.equals("updateStudent")) {
            String submit = request.getParameter("submit");
            if (submit == null) {
                List<student> list = (ArrayList<student>)dao.getStudent("select * from Student where rollName = " + Integer.parseInt(request.getParameter("rollName")));
                request.setAttribute("list", list);
                request.getRequestDispatcher("/updateStudent.jsp").forward(request, response);

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
               float balance_c = Integer.parseInt(balance);
                String sql = "select * from Student where rollName = " + rollName;
                List<student> list = dao.getStudent(sql);
                if (list.size() > 0) {
                    //CONVERT
                    
                     
                    //CREATE ENTITY
                    student student = new student(rollName, fullname, campus, phoneNumber, gender, term, balance_c, gmail);
                    dao.updateStudent(student);
                    response.sendRedirect("manageStudent");

                }

            }

        }

        if (service.equals("deleteCustomer")) {
            int id = Integer.parseInt(request.getParameter("customerID"));
            dao.removeCustomer(id);
            response.sendRedirect("CustomerURL?service=listAllCustomer");
        }
        if (service.equals("insertCustomer")) {
            String submit = request.getParameter("submit");
            if (submit == null) {
                Vector<Customer> vector = (Vector<Customer>)dao.getCustomer("Select top 1 * from [dbo].[customers] order by customer_id desc ");
                request.setAttribute("vector", vector);
                request.getRequestDispatcher("/jsp/InsertCustomer.jsp").forward(request, response);

            } else {
                String customer_id = request.getParameter("customer_id");
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String street = request.getParameter("street");
                String city = request.getParameter("city");
                String state = request.getParameter("state");
                String zip_code = request.getParameter("zip_code");
                //CHECK DATA
                String sql = "select * from customers where customer_id = " + customer_id;
                Vector<Customer> vector = dao.getCustomer(sql);
                if (vector.size() > 0) {

                    response.sendRedirect("CustomerURL?service=listAllCustomer");

                }
                //CONVERT
                int customer_id_c = Integer.parseInt(customer_id);

                //CREATE ENTITY
                Customer customer = new Customer(customer_id_c, fname, lname, phone, email, street, city, state, zip_code);
                dao.addCustomer(customer);
                response.sendRedirect("CustomerURL");
            }
        }
        if (service.equals("deleteCustomer")) {
            int id = Integer.parseInt(request.getParameter("customerID"));
            dao.removeCustomer(id);
            response.sendRedirect("CustomerURL?service=listAllCustomer");

        }

        if (service.equals("listAllCustomer")) {
            //CHECK SUBMIT
            String submit = request.getParameter("submit");
            Vector<Customer> vector = null;
            if (submit == null) {
                vector = dao.getCustomer("select * from customers");
            } else {
                String c_id = request.getParameter("customer_id");
                vector = dao.getCustomer("select * from customers where customer_id like '%" + c_id + "%'");
            }

            String titlePage = "Customer Manage";
            String titleTable = "List of Customers";
            //SET DATA FOR VIEW
            request.setAttribute("data", vector);
            request.setAttribute("page", titlePage);
            request.setAttribute("titleTable", titleTable);
            //SELECT VIEW
            RequestDispatcher dispatch = request.getRequestDispatcher("/jsp/ViewCustomer.jsp");
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
