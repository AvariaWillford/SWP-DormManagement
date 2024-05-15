package DAL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {


        protected Connection connection;

        public DBContext() {
            try {
                String username = "sa";
                String password = "trungquangxt18";
                String url = "jdbc:sqlserver://localhost:1433;databaseName=SWPtest;encrypt=true;trustServerCertificate=true";
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                connection = DriverManager.getConnection(url, username, password);
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

