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
public class DAOaccount  extends DAL.DBContext{
    public account login (String gmail,String pass){
        String sql = "select * from [account] where [gmail] ='"+gmail+"' and [password] ='"+pass+"'";

        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
            
            while (rs.next()) {   
                
                String gmailLogin = rs.getString(1);
                String password = rs.getString(2);
                int role = rs.getInt(3);
                
                account account = new account(gmail, password, role);
                System.out.println(account);
                return account;
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
     public void registerAccount(String gmail, String pass) { //checked
        String sql = "INSERT INTO account (gmail, password, role) values(?,?,?)";
        PreparedStatement pre;
        try {
            pre = conn.prepareStatement(sql); 
            pre.setString(1, gmail);
            pre.setString(2, pass);
            pre.setString(3, "0");         
            pre.executeUpdate();
        } catch (Exception e) {
            System.out.println("loi ");
        }
    }
     
      public account checkGmailExists (String gmail){// checked
        String sql = "select * from [account] where [gmail] ='"+gmail+"'";

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
       public account forgotPassword (String gmail){ // checked
        String sql = "select * from [account] where [gmail] ='"+gmail+"'";

        try {
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {   
                String gmailForgotPassword = rs.getString(1);
                String password = rs.getString(2);
                int role = rs.getInt(3);
                account account = new account(gmail, password, role);
                System.out.println(account);
                return account;
            }
        } catch (SQLException ex) {
            System.out.println("loi");
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
       
}
