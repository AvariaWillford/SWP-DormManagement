/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import DAL.DBContext;
import java.sql.SQLException;
import java.sql.ResultSet;

/**
 *
 * @author anhem
 */
public class DAOrequest extends DAL.DBContext {

     //Method to check if rollName exists in DormResident table
    public boolean isRollNameExists(String rollName) throws SQLException {
        String sql = "SELECT COUNT(*) FROM DormResident WHERE rollName = ?";
        try (PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, rollName);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        }
        return false;
    }

    // Method to insert a request into the Requests table
   public boolean insertRequest(String requestType, String rollName, String requestDetail) throws SQLException {
    if (!isRollNameExists(rollName)) {
        throw new SQLException("rollName does not exist in DormResident table.");
    }

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

    public static void main(String[] args) {
        // Test the insertRequest method
        DAOrequest d = new DAOrequest();

        // Test data
        String requestType = "Maintenance";
        String rollName = "HE186339"; 
        String requestDetail = " Air conditioner not working";

        try {
            if (d.insertRequest(requestType, rollName, requestDetail)) {
                System.out.println("Request submitted successfully!");
            } else {
                System.out.println("Failed to submit request.");
            }
        } catch (SQLException e) {
            System.err.println("Error occurred: " + e.getMessage());
            e.printStackTrace();
        }
    }
}