

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

/**
 * Servlet implementation class depositServlet
 */


@WebServlet("/deposit")
public class DepositServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Mock database
    private Map<String, Double> accounts = new HashMap<>();

    @Override
    public void init() throws ServletException {
        super.init();
        // Initialize some accounts for the example
        accounts.put("123456", 1000.00);
        accounts.put("654321", 500.00);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountNumber = request.getParameter("accountNumber");
        double amount = Double.parseDouble(request.getParameter("amount"));

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if (accounts.containsKey(accountNumber)) {
            double newBalance = accounts.get(accountNumber) + amount;
            accounts.put(accountNumber, newBalance);
            out.println("<html><body>");
            out.println("<h1>Deposit Successful</h1>");
            out.println("<p>Deposited $" + amount + " into account " + accountNumber + ". New balance: $" + newBalance + "</p>");
            out.println("</body></html>");
        } else {
            out.println("<html><body>");
            out.println("<h1>Error</h1>");
            out.println("<p>Account not found.</p>");
            out.println("</body></html>");
        }

        out.close();
    }
}
