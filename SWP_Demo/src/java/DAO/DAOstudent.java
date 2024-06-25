///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package DAO;
//
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.*;
//import model.*;
//
//
///**
// *
// * @author lenovo
// */
//public class DAOstudent extends DAL.DBContext{
//
//    
//    public student checkStudentExistByEmail(String mail) {
//        String sql = "select * from Student where gmail = ?";
//        try {
//            PreparedStatement st = conn.prepareStatement(sql);
//            st.setString(1, mail);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                String roll = rs.getString(1);
//                String fullname = rs.getString(2);
//                String campus = rs.getString(3);
//                String phone = rs.getString(4);
//                String gender = rs.getString(5);
//                String term = rs.getString(6);
//                float balance = rs.getFloat(7);
//                String gmail = rs.getString(8);
//                student student = new student(roll, fullname, campus, phone, gender, term, balance, gmail);
//                
//                return student;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return null;
//    }
//    
//    public int getTotalStudent() {
//        try {
//             PreparedStatement ps = null;
//            ResultSet rs = null;
//            String sql = "select count(*) from ( select distinct rollName  from [Student] ) as a";
//            ps = conn.prepareStatement(sql);
//            rs = ps.executeQuery();
//            rs.next();
//            return rs.getInt(1);
//
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return 0;
//    }
//    
//    
//
//    public List<student> getStudent(String sql) {
//        List<student> list = new ArrayList<>();
//        try {
//            Statement statement = conn.createStatement(
//                    ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
//            ResultSet rs = statement.executeQuery(sql);
//            while (rs.next()) {
////                dataType varName=rs.getdataType(index,fieldName);
//                student student = new student();
//                student.setRollName(rs.getString(1));
//                student.setFullname(rs.getString(2));
//                student.setCampus(rs.getString(3));
//                student.setPhoneNumber(rs.getString(4));
//                student.setGender(rs.getString(5));
//                student.setTerm(rs.getString(6));
//                student.setBalance(rs.getFloat(7));
//                student.setGmail(rs.getString(8));
//                list.add(student);
//                System.out.println(list);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, sql);
//        }
//        return list;
//    }
//    public int updateStudent(student obj) {
//        int n = 0;
//        String sql = "UPDATE [dbo].[Student]\n"
//                + "   SET \n"
//                + "         [fullname] = ?,[campus] = ?\n"
//                + "      ,[phoneNumber] = ?,[gender] = ?,[term] = ?\n"
//                + "      ,[balance] = ?,[gmail] = ?\n"
//                + " WHERE [rollName] = ?";
//        
//        
//        try {
//            PreparedStatement prestatement = conn.prepareStatement(sql);
////            prestatement.setDatatype(indexOf?,parameterValue);
//            
//            prestatement.setString(1, obj.getFullname());
//            prestatement.setString(2, obj.getCampus());
//            prestatement.setString(3, obj.getPhoneNumber());
//            prestatement.setString(4, obj.getGender());
//            prestatement.setString(5, obj.getTerm());
//            prestatement.setFloat(6, obj.getBalance());
//            prestatement.setString(7, obj.getGmail());
//            prestatement.setString(8, obj.getRollName());
//            n = prestatement.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return n;
//
//    }
//
//     public int addToDorm(String rollName,String bedName) {
//        int n = 0;
//        String sql = "insert into DormResident values ('"+ rollName +"','"+ bedName+"');"
//                + "update bed set status = 1 where bedName = '"+ bedName + "'";
//        try {
//            Statement statement = conn.createStatement();
//            n = statement.executeUpdate(sql);
//            System.out.println("add success");
//        } catch (SQLException ex) {
//            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
//            System.out.println("add false");
//        }
//
//        return n;
//    }
//     public static void main(String[] args) {
//        DAOstudent dao = new DAOstudent();
//         dao.addToDorm("he186344", "no2_A201");
//    }
//     
//}