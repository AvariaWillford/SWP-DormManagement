package DAL;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
    protected Connection connection;
    public DBContext(){
        try{
            String username = "sa";
            String password = "minhdbd4";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SWP;encrypt=true;trustServerCertificate=true";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);

        }
        catch(ClassNotFoundException | SQLException e){
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE,null,e);
        }
    }
}
