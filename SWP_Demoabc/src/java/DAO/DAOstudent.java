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
import model.student;

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
    
     public student checkStudentExistByEmail(String mail) {
        String sql = "select * from Student where gmail = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, mail);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String roll = rs.getString(1);
                String fullname = rs.getString(2);
                String campus = rs.getString(3);
                String phone = rs.getString(4);
                String gender = rs.getString(5);
                String term = rs.getString(6);
                float balance = rs.getFloat(7);
                String gmail = rs.getString(8);
                student student = new student(roll, fullname, campus, phone, gender, term, balance, gmail);

                return student;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    
    public static void main(String[] args) {
        DAOstudent dao = new DAOstudent();
       
        
    }
   
   
}
