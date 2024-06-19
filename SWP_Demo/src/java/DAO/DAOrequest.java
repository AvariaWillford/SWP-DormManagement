/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;

import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

/**
 *
 * @author anhem
 */
public class DAOrequest extends DAL.DBContext {

     //Method to check if rollName exists in DormResident table
//    public boolean isRollNameExists(String rollName) throws SQLException {
//        String sql = "SELECT COUNT(*) FROM DormResident WHERE rollName = ?";
//        try (PreparedStatement stm = conn.prepareStatement(sql)) {
//            stm.setString(1, rollName);
//            try (ResultSet rs = stm.executeQuery()) {
//                if (rs.next()) {
//                    return rs.getInt(1) > 0;
//                }
//            }
//        }
//        return false;
//    }

    // Method to insert a request into the Requests table
   public boolean insertRequest(String requestType, String rollName, String requestDetail) throws SQLException {
    

    String sql = "MERGE INTO Requests AS target " +
                 "USING (VALUES (?, ?, ?)) AS source (requestType, rollName, requestDetail) " +
                 "ON target.requestType = source.requestType " +
                 "WHEN MATCHED THEN " +
                 "UPDATE SET rollName = source.rollName, requestDetail = source.requestDetail " +
                 "WHEN NOT MATCHED THEN " +
                 "INSERT (requestType, rollName, requestDetail) VALUES (source.requestType, source.rollName, source.requestDetail);";
    try (PreparedStatement stm = conn.prepareStatement(sql)) {
        stm.setString(1, requestType);
        stm.setString(2, rollName);
        stm.setString(3, requestDetail);
        return stm.executeUpdate() > 0;
    }
}
     public List<requests> getAllRequest() {
        List<requests> requests = new ArrayList<>();
        try {
            String sql = "select * from Requests";
            PreparedStatement stm = conn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                requests request = new requests();
                request.setRequestType(rs.getString(1));
                request.setRollName(rs.getString(2));
                request.setRequestDetail(rs.getString(3));
                
                requests.add(request);
            }
        } catch (Exception ex) {
            Logger.getLogger(DAOrequest.class.getName()).log(Level.SEVERE, null, ex);
        }
        return requests;
    }
    

    public static void main(String[] args) {
        // Test the insertRequest method
        DAOrequest d = new DAOrequest();

        // Test data
        String requestType = "Maintenance";
        String rollName = "HE186338"; 
        String requestDetail = " Air conditioner not working";

        System.out.println(d.getAllRequest());
    }
}
