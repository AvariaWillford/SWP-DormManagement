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
public class DAOadmin  extends DAL.DBContext{
    public admin login (String gmail,String pass){
        String sql = "select * from [admin] where [gmail] ='"+gmail+"' and [password] ='"+pass+"'";

        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            
            while (rs.next()) {   
                
                String gmailLogin = rs.getString(1);
                String password = rs.getString(2);
              
                admin account = new admin(gmail, password);
                System.out.println(account);
                return account;
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
       public admin checkAdminAccount(String mail) {
        String sql = "select * from Admin where gmail = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, mail);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String gmail = rs.getString(1);
                String password = rs.getString(2);

                admin admin = new admin(gmail, password);

                return admin;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
       public String forgotPassword (String gmail){ // checked
        String sql = "select * from [admin] where [gmail] ='"+gmail+"'";

        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {   
                String gmailForgotPassword = rs.getString(1);
                String password = rs.getString(2);

                
                return password;
            }
        } catch (SQLException ex) {
            System.out.println("loi");
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
       }
