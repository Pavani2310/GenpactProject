
public class customerdashboardDAO {
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

	    private String jdbcURL = "jdbc:mysql://localhost:3306/customerdashboard";
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

	    
	    private static final String INSERT_USER_SQL = "INSERT INTO customer_dashboard (username, dob, phone, email, address, accountType, gender, accountNumber, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

	    public boolean createAccount(String username, String dob, String phone, String email, String address, String accountType, String gender, String accountNumber, String password) {
	        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
	            
	            preparedStatement.setString(1, username);
	            preparedStatement.setString(2, dob);
	            preparedStatement.setString(3, phone);
	            preparedStatement.setString(4, email);
	            preparedStatement.setString(5, address);
	            preparedStatement.setString(6, accountType);
	            preparedStatement.setString(7, gender);
	            preparedStatement.setString(8, accountNumber);
	            preparedStatement.setString(9, password);
	            
	            int result = preparedStatement.executeUpdate();
	            return result > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }
	}

}
