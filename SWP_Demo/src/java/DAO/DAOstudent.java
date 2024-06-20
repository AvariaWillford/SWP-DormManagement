/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import model.*;

/**
 *
 * @author lenovo
 */
public class DAOstudent extends DAL.DBContext {

    public Users checkUserExistByEmail(String mail) {
        String sql = "select * from Users where gmail = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, mail);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String rollName = rs.getString(2);
                String fullname = rs.getString(3);
                String campus = rs.getString(4);
                String phone = rs.getString(5);
                String gender = rs.getString(6);
                String term = rs.getString(7);
                float balance = rs.getFloat(8);
                String gmail = rs.getString(9);
                int roleID = rs.getInt(10);
                Users user = new Users(0, rollName, fullname, campus, phone, gender, term, balance, gmail, roleID);

                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public int getTotalStudent() {
        try {
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql = "select count(*) from ( select distinct rollName  from [Users]  where roleID = '2' ) as a";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            rs.next();
            return rs.getInt(1);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

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
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    public int updateStudent(student obj) {
//        int n = 0;
//        String sql = "UPDATE [dbo].[Student]\n"
//                + "   SET \n"
//                + "         [fullname] = ?,[campus] = ?\n"
//                + "      ,[phoneNumber] = ?,[gender] = ?,[term] = ?\n"
//                + "      ,[balance] = ?,[gmail] = ?\n"
//                + " WHERE [rollName] = ?";
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
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return n;
//
//    }

//    public int addToDorm(String rollName, String bedName) {
//        int n = 0;
//        String sql = "insert into DormResident values ('" + rollName + "','" + bedName + "');"
//                + "update bed set status = 1 where bedName = '" + bedName + "'";
//        try {
//            Statement statement = conn.createStatement();
//            n = statement.executeUpdate(sql);
//            System.out.println("add success");
//       } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return n;
//    }

    public static void main(String[] args) {
        DAOstudent dao = new DAOstudent();
        
        System.out.println( dao.getTotalStudent());
    }

}
