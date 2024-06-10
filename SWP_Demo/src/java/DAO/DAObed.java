/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import model.bed;
import DAL.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.room;


/**
 *
 * @author anhem
 */
public class DAObed extends DAL.DBContext{
  
   
    public bed searchBedsByName(String bedName) {
       
        try {        
            
          String sql = "SELECT * FROM bed WHERE bedName = ?";
              PreparedStatement stm = conn.prepareStatement(sql); {
            stm.setString(1, bedName);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
               String bedNames = rs.getString(1);   
               int status = rs.getInt(2);
                float price = rs.getFloat(3);
                
                bed bed = new bed(bedNames, status, price);
                System.out.println(bed);
                return bed;
            }
        }
        } catch(SQLException e){
            e.printStackTrace();
        }
         return null;
       
    }
      public room searchBedsByRoom(String roomName) {
       
        try {        
            
          String sql = "SELECT * FROM room WHERE roomName = ?";
              PreparedStatement stm = conn.prepareStatement(sql); {
            stm.setString(1, roomName);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
               String roomNames = rs.getString(1);   
               String dormName = rs.getString(2);
                
                
               room room = new room(roomName, dormName);
                System.out.println(room);
                return room;
            }
        }
        } catch(SQLException e){
            e.printStackTrace();
        }
         return null;
       
    }
   
    public static void main(String[] args){
        DAObed dao = new DAObed();
        dao.searchBedsByName("no1_A101");
        dao.searchBedsByRoom("A101");
        
    }
    
    
    
    
   
}




