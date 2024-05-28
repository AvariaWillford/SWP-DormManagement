package DAL;
import java.sql.*;

public class DAO {
    private Connection conn;
    private String status = "OK";

    public DAO() {
        try {
            conn = new DBContext().connection;

        }
        catch (Exception e) {
            status = "ERROR at connection" + e.getMessage();
        }
    }
    public static void main(String[] args){
        DAO dao = new DAO();
        System.out.println(dao.status);
    }
}
