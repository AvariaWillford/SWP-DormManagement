///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package DAO;
//
//import com.sun.jdi.connect.spi.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import model.*;
//
///**
// *
// * @author lenovo
// */
//public class DAOadmin extends DAL.DBContext {
//
//    public admina login(String gmail, String pass) {
//        String sql = "SELECT * FROM [admin] WHERE [gmail] = ? AND [password] = ?";
//        try ( // Lấy kết nối từ một nguồn nào đó
//                 PreparedStatement stmt = conn.prepareStatement(sql)) {
//            stmt.setString(1, gmail);
//            stmt.setString(2, pass);
//            try (ResultSet rs = stmt.executeQuery()) {
//                if (rs.next()) {
//                    String gmailLogin = rs.getString(1);
//                    String password = rs.getString(2);
//                    return new admina(gmailLogin, password);
//                }
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOadmin.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }
//
//    public admina checkAdminAccount(String mail) {
//        String sql = "select * from Admin where gmail = ?";
//        try {
//            PreparedStatement st = conn.prepareStatement(sql);
//            st.setString(1, mail);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                String gmail = rs.getString(1);
//                String password = rs.getString(2);
//
//                admina admin = new admina(gmail, password);
//
//                return admin;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return null;
//    }
//
//    public String forgotPassword(String gmail) { // checked
//        String sql = "select * from [admin] where [gmail] ='" + gmail + "'";
//
//        try {
//            Statement state = conn.createStatement(
//                    ResultSet.TYPE_SCROLL_SENSITIVE,
//                    ResultSet.CONCUR_UPDATABLE);
//            PreparedStatement stm = conn.prepareStatement(sql);
//            ResultSet rs = stm.executeQuery();
//
//            while (rs.next()) {
//                String gmailForgotPassword = rs.getString(1);
//                String password = rs.getString(2);
//
//                return password;
//            }
//        } catch (SQLException ex) {
//            System.out.println("loi");
//            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//
//    }
//
//    public static void main(String[] args) {
//        DAOadmin dao = new DAOadmin();
//        String a = "admin";
//        String b = "admin";
//        System.out.println(dao.login(a, b));;
//    }
//}
