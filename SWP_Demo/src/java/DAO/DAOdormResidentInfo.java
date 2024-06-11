/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOdormResidentInfo extends DAL.DBContext {

    public class DormResidentInfo {
        private String rollName;
        private String dormName;
        private String roomName;
        private String bedName;

        // Constructors, getters, and setters

        public DormResidentInfo(String rollName, String dormName, String roomName, String bedName) {
            this.rollName = rollName;
            this.dormName = dormName;
            this.roomName = roomName;
            this.bedName = bedName;
        }

        public String getRollName() {
            return rollName;
        }

        public void setRollName(String rollName) {
            this.rollName = rollName;
        }

        public String getDormName() {
            return dormName;
        }

        public void setDormName(String dormName) {
            this.dormName = dormName;
        }

        public String getRoomName() {
            return roomName;
        }

        public void setRoomName(String roomName) {
            this.roomName = roomName;
        }

        public String getBedName() {
            return bedName;
        }

        public void setBedName(String bedName) {
            this.bedName = bedName;
        }
    }

    public DormResidentInfo findDormResidentInfo(String rollName) throws SQLException {
        String sql = "SELECT dr.rollName, d.dormName, r.roomName, b.bedName " +
                     "FROM DormResident dr " +
                     "JOIN Bed b ON dr.bedName = b.bedName " +
                     "JOIN Room r ON b.roomName = r.roomName " +
                     "JOIN Dorm d ON r.dormName = d.dormName " +
                     "WHERE dr.rollName = ?";

        try (PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, rollName);
            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String dormName = rs.getString("dormName");
                    String roomName = rs.getString("roomName");
                    String bedName = rs.getString("bedName");
                    return new DormResidentInfo(rollName, dormName, roomName, bedName);
                }
            }
        }
        return null;
    }

    public static void main(String[] args) {
        DAOdormResidentInfo dao = new DAOdormResidentInfo();
        String rollName = "he186338";
        
        
        try {
            DormResidentInfo info = dao.findDormResidentInfo(rollName);
            if (info != null) {
                System.out.println("Roll Name: " + info.getRollName());
                System.out.println("Dorm Name: " + info.getDormName());
                System.out.println("Room Name: " + info.getRoomName());
                System.out.println("Bed Name: " + info.getBedName());
            } else {
                System.out.println("No resident found with roll name: " + rollName);
            }
        } catch (SQLException e) {
            System.err.println("Error occurred: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
