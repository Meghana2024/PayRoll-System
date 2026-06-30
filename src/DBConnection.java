import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/payroll_system?useSSL=false";
    private static final String USER = "root"; // your MySQL username
    private static final String PASS = "root"; // your MySQL password

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASS);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Database Connection Failed: " + e.getMessage());
            return null;
        }
    }
    public static void main(String[] args) {
    if (DBConnection.getConnection() != null)
        System.out.println("Connection Successful!");
}
}
