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
import model.dormResident;
import model.student;

/**
 *
 * @author lenovo
 */
public class DAOdormResident extends DAL.DBContext {

    public List<dormResident> getdormResident(String sql) {
        List<dormResident> list = new ArrayList<>();
        try {
            Statement statement = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
//                dataType varName=rs.getdataType(index,fieldName);
                dormResident dormResident = new dormResident();
                dormResident.setRollName(rs.getString(1));
                dormResident.setBedName(rs.getString(2));
                list.add(dormResident);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, sql);
        }
        return list;
    }

    public dormResident getBedName(String mail) {
        String sql = "SELECT dr.bedName\n"
                + "FROM Student s\n"
                + "JOIN dormResident dr ON s.rollName = dr.rollName\n"
                + "where gmail = '" + mail + "'";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
           
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String bedName = rs.getString(1);
              
                dormResident bed = new dormResident(bedName);

                return bed;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public int removeStudent(String rollName) {
        int n = 0;
        String sql = "delete from dormResident where rollName = '" + rollName + "'";
        try {
            Statement statement = conn.createStatement();
            n = statement.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public int addToDorm(String rollName, String bedName) {
        int n = 0;
        String sql = "insert into dormResident values ('" + rollName + "','" + bedName + "')"
                + "update bed set status = 1 where bedName = '" + bedName + "'";
        try {
            Statement statement = conn.createStatement();
            n = statement.executeUpdate(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public int getTotaldormResident() {
        try {
            PreparedStatement ps = null;
            ResultSet rs = null;
            String sql = "select count(*) from ( select distinct rollName  from [dormResident] ) as a";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            rs.next();
            return rs.getInt(1);

        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    public List<dormResident> getBedNameByRoll(String sql) {
        List<dormResident> list = new ArrayList<>();
        try {
            Statement statement = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
//                dataType varName=rs.getdataType(index,fieldName);
                dormResident dormResident = new dormResident();
                dormResident.setRollName(rs.getString(1));
                dormResident.setBedName(rs.getString(2));
                list.add(dormResident);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, sql);
        }
        return list;
    }


    public static void main(String[] args) {
        DAOdormResident dao = new DAOdormResident();
        System.out.println(dao.getBedName("minhtnhe186338@fpt.edu.vn"));
    }
}
