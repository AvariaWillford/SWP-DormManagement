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
import model.*;


/**
 *
 * @author lenovo
 */
public class DAOBed extends DAL.DBContext {

   public List<bed> getBed(String sql) {
        List<bed> listBed = new ArrayList<>();
        try {
            Statement statement = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
//                dataType varName=rs.getdataType(index,fieldName);
                bed bed = new bed();
                bed.setBedName(rs.getString(1));
                bed.setStatus(rs.getInt(2));
                bed.setPrice(rs.getFloat(3));
                bed.setRoomName(rs.getString(4));
                listBed.add(bed);
                System.out.println(bed);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, sql);
        }
        return listBed;
    }

    public int updateBed(bed obj, String bedName) {
        int n = 0;
        String sql = "UPDATE [dbo].[bed]\n"
                + "   SET \n"
                + "         [status] = ?\n"
                + "      ,[price] = ?"
                + "where bedName = '" + bedName +"'";

        try {
            PreparedStatement prestatement = conn.prepareStatement(sql);
//            prestatement.setDatatype(indexOf?,parameterValue);

       
            prestatement.setInt(1, obj.getStatus());
            prestatement.setFloat(2, obj.getPrice());

            n = prestatement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOstudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return n;

    }
    
      public int checkBedStatus(String name) {
        String sql = "select status from bed where bedName = '"+ name +"'";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
           
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int check = rs.getInt(1);
                
               
                
                return check;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }

       public static void main(String[] args) {
        DAOBed dao = new DAOBed();

        // Lấy thông tin giường từ cơ sở dữ liệu
        String sql = "SELECT * FROM bed WHERE bedName = 'no1_A101'";
        List<bed> bedList = dao.getBed(sql);

        if (!bedList.isEmpty()) {
            bed bedToUpdate = bedList.get(0);
            System.out.println("Thông tin giường trước khi cập nhật:");
            System.out.println("Tên giường: " + bedToUpdate.getBedName());
            System.out.println("Trạng thái: " + bedToUpdate.getStatus());
            System.out.println("Giá: " + bedToUpdate.getPrice());
            System.out.println("Tên phòng: " + bedToUpdate.getRoomName());

            // Cập nhật thông tin giường
            bedToUpdate.setStatus(0);
            bedToUpdate.setPrice(170.0f);

            // Gọi phương thức updateBed và lưu số dòng đã cập nhật
            int rowsUpdated = dao.updateBed(bedToUpdate, "no1_A101");
            System.out.println("Số dòng đã cập nhật: " + rowsUpdated);

            // Kiểm tra dữ liệu sau khi cập nhật
            String updatedSql = "SELECT * FROM bed WHERE bedName = 'bed01'";
            List<bed> updatedBed = dao.getBed(updatedSql);

            if (!updatedBed.isEmpty()) {
                bed retrievedBed = updatedBed.get(0);
                System.out.println("Thông tin giường sau khi cập nhật:");
                System.out.println("Tên giường: " + retrievedBed.getBedName());
                System.out.println("Trạng thái: " + retrievedBed.getStatus());
                System.out.println("Giá: " + retrievedBed.getPrice());
                System.out.println("Tên phòng: " + retrievedBed.getRoomName());
            } else {
                System.out.println("Không tìm thấy giường sau khi cập nhật.");
            }
        } else {
            System.out.println("Không tìm thấy giường 'bed01' trong cơ sở dữ liệu.");
        }
    }
}
