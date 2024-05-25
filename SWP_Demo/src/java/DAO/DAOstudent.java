/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.admin;

/**
 *
 * @author lenovo
 */
public class DAOstudent extends DAL.DBContext{
//    public List<student> getAllStudent() { //checked
//        List<student> list = new ArrayList<>();
//        try {
//            String sql = "SELECT * from student";
//            PreparedStatement stm = conn.prepareStatement(sql);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                student student = new student();
//                student.setFullname(rs.getString(1));
//                student.setCampus(rs.getString(2));
//                student.setPhoneNumber(rs.getString(3));
//                student.setGender(rs.getInt(4));
//                student.setEmail(rs.getString(5));
//                student.setTerm(rs.getString(6));
//                student.setBalance(rs.getFloat(7));
//                student.setRollName(rs.getString(8));
//                
//                list.add(student);
//                
//                
//            }
//        } catch (Exception ex) {
//            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//    }
//  
    
    
    public static void main(String[] args) {
        DAOstudent dao = new DAOstudent();
       
        
    }
   
   
}
