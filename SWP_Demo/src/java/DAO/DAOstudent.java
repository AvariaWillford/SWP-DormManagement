/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.admin;
import model.student;


/**
 *
 * @author lenovo
 */
public class DAOstudent extends DAL.DBContext{

    
    
    

    public List<student> getStudent(String sql) {
        List<student> list = new ArrayList<>();
        try {
            Statement statement = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
//                dataType varName=rs.getdataType(index,fieldName);
                student student = new student();
                student.setRollName(rs.getString(1));
                student.setFullname(rs.getString(2));
                student.setCampus(rs.getString(3));
                student.setPhoneNumber(rs.getString(4));
                student.setGender(rs.getString(5));
                student.setTerm(rs.getString(6));
                student.setBalance(rs.getFloat(7));
                student.setGmail(rs.getString(8));
                list.add(student);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, sql);
        }
        return list;
    }
    public int updateStudent(student obj) {
        int n = 0;
        String sql = "UPDATE [dbo].[Student]\n"
                + "   SET \n"
                + "         [fullname] = ?,[campus] = ?\n"
                + "      ,[phoneNumber] = ?,[gender] = ?,[term] = ?\n"
                + "      ,[balance] = ?,[gmail] = ?\n"
                + " WHERE [rollName] = ?";
        
        
        try {
            PreparedStatement prestatement = conn.prepareStatement(sql);
//            prestatement.setDatatype(indexOf?,parameterValue);
            
            prestatement.setString(1, obj.getFullname());
            prestatement.setString(2, obj.getCampus());
            prestatement.setString(3, obj.getPhoneNumber());
            prestatement.setString(4, obj.getGender());
            prestatement.setString(5, obj.getTerm());
            prestatement.setFloat(6, obj.getBalance());
            prestatement.setString(7, obj.getGmail());
            prestatement.setString(8, obj.getRollName());
            n = prestatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;

    }
     public int removeStudent(String rollName) {
        int n = 0;
        

        String sql = "delete from Student where rollName = " + rollName;
        try {
            Statement statement = conn.createStatement();
            n = statement.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }
     
}