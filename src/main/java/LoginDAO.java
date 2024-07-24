import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/login";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Pavani@2330";
    
    
    static
    {
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    	} catch (ClassNotFoundException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
    }

    
    
    private static final String LOGIN_QUERY = "SELECT * FROM login_page WHERE username = ? AND password = ? AND role = ?";

    public boolean validate(String username, String password, String role) {
        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(LOGIN_QUERY)) {
            
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, role);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}