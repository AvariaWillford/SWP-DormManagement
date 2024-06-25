package DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.requests;

public class DAOrequest extends DAL.DBContext {
    public void addRequest(requests request) {
        String sql = "INSERT INTO Requests (requestType, rollName, requestDetail, userID) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, request.getRequestType());
            ps.setString(2, request.getRollName());
            ps.setString(3, request.getRequestDetail());
            ps.setInt(4, request.getUserID());
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}