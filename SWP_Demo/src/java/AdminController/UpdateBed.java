///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//package AdminController;
//
//import DAO.DAOBed;
//import java.io.IOException;
//import java.io.PrintWriter;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import java.util.ArrayList;
//import java.util.List;
//import model.*;
//
//
///**
// *
// * @author lenovo
// */
//@WebServlet(name = "UpdateBed", urlPatterns = {"/UpdateBed"})
//public class UpdateBed extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        DAOBed dao = new DAOBed();
//        String service = request.getParameter("service");
//        HttpSession session = request.getSession(true);
//        
//        if (service.equals("updateBed")) {
//            String submit = request.getParameter("submit");
//            if (submit == null) {
//                List<bed> list = (ArrayList<bed>) dao.getBed("select * from bed where bedName = '" + request.getParameter("bedName") + "'");
//                request.setAttribute("list", list);
//                request.getRequestDispatcher("/UpdateBed.jsp").forward(request, response);
//
//            } else {
//                String bedName = request.getParameter("bedName");
//                String status = request.getParameter("status");
//                String price = request.getParameter("price");
//                int status_c = Integer.parseInt(status);
//                float price_c = Float.parseFloat(price);
//               
//                String sql = "select * from bed where bedName = '" + bedName + "'";
//                List<bed> list = dao.getBed(sql);
//                if (list.size() > 0) {
//                    //CONVERT
//
//                    //CREATE ENTITY
//                    bed bed = new bed(bedName, status_c, price_c, bedName);
//                   
//                    dao.updateBed(bed, bedName);
//                    response.sendRedirect("manageBed");
//
//                }
//
//            }
//
//        }
//    }
//
//  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
