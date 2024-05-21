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
import model.account;

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
  
    
    
    public static void main(String[] args) {
        DAOstudent dao = new DAOstudent();
        dao.checkStdInfExists("555");
        
    }
    public void registerInfomation(String gmail, String rollName, String fullName, String phoneNumber, String term) { //checked
        String sql = "INSERT INTO student (rollName, fullname, campus, phoneNumber, gender, term, balance, gmail) values(?,?,?,?,?,?,?,?)";
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql); 
            pre.setString(1, rollName);
            pre.setString(2, fullName);
            pre.setString(3, "0");
            pre.setString(4, phoneNumber);
            pre.setString(5, "0");
            pre.setString(6, term);
            pre.setString(7, "0");
            pre.setString(8, gmail);               
            pre.executeUpdate();
        } catch (Exception e) {
            System.out.println("loi ");
        }
    }
    public account checkStdInfExists (String gmail){// checked
        String sql = "select * from [student] where [gmail] ='"+gmail+"'";

        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            
            while (rs.next()) {   
                String gmailToCheck = rs.getString(1);
                String password = rs.getString(2);
                int role = rs.getInt(3);
                
                account account = new account(gmail, password, role);

                return account;
            }
        } catch (SQLException ex) {
            System.out.println("loi");
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
}
