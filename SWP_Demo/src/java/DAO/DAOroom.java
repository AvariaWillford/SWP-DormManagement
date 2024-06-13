/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import model.room;
import model.bed;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;


/**
 *
 * @author anhem
 */
public class DAOroom extends DAL.DBContext{
      // Method to get all rooms by dorm name
    public Map<String, List<bed>> getBedsByDorm(String dormName) {
        Map<String, List<bed>> bedsMap = new HashMap<>();

        // SQL query to get all rooms and their beds in the specified dorm
        String query = "SELECT r.roomName, b.bedName, b.status, b.price " +
                       "FROM room r " +
                       "JOIN Bed b ON r.roomName = b.roomName " +
                       "WHERE r.dormName = ?";

        try (
             PreparedStatement stmt = conn.prepareStatement(query)) {

            // Set the dorm name in the query
            stmt.setString(1, dormName);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // Get room and bed information from the result set
                String roomName = rs.getString("roomName");
                String bedName = rs.getString("bedName");
                int status = rs.getInt("status");
                float price = rs.getFloat("price");

                // Create a bed object
                bed bed = new bed(bedName, status, price);

                // Add the bed to the list of beds for the current room
                bedsMap.computeIfAbsent(roomName, k -> new ArrayList<>()).add(bed);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bedsMap;
    }
     public static void main(String[] args) {
        // Create an instance of DAOroom
        DAOroom daoRoom = new DAOroom();

        // Specify the dormitory name for which you want to retrieve beds
        String dormName = "Dorm A";

        // Call the getBedsByDorm method to retrieve beds for the specified dormitory
        Map<String, List<bed>> bedsByDorm = daoRoom.getBedsByDorm(dormName);

        // Print the retrieved beds for each room
        for (Map.Entry<String, List<bed>> entry : bedsByDorm.entrySet()) {
            String roomName = entry.getKey();
            List<bed> beds = entry.getValue();

            System.out.println("Room: " + roomName);
            for (bed bed : beds) {
                System.out.println("Bed: " + bed.getBedName() + ", Status: " + bed.getStatus() + ", Price: " + bed.getPrice());
            }
            System.out.println();
        }
    }
}
