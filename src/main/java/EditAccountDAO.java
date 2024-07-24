
public class EditAccountDAO {
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

	
	    private String jdbcURL = "jdbc:mysql://localhost:3306/editaccount";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "Pavani@2330";
	    
	    private static final String DELETE_USER_SQL = "DELETE FROM edit_account WHERE accountNumber = ?";

	    static
	    {
	    	try {
	    		Class.forName("com.mysql.cj.jdbc.Driver");
	    	} catch (ClassNotFoundException e) {
	    		// TODO Auto-generated catch block
	    		e.printStackTrace();
	    	}
	    }

	    
	    
	    public boolean deleteAccount(String accountNumber) {
	        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER_SQL)) {
	            
	            preparedStatement.setString(1, accountNumber);
	            
	            int result = preparedStatement.executeUpdate();
	            return result > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }
	}

}
