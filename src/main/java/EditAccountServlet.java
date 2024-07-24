import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/EditAccountServlet")
public class EditAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accountNumber = request.getParameter("accountNumber");
        String username = request.getParameter("username");
        String dob = request.getParameter("dob");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String accountType = request.getParameter("accountType");
        String gender = request.getParameter("gender");

        EditAccountDAO editAccountDAO = new EditAccountDAO();
        boolean accountUpdated = editAccountDAO.updateAccount(accountNumber, username, dob, phone, email, address, accountType, gender);
        HttpSession session = request.getSession(); 
        session.setAttribute("account", EditAccountDAO.getAccountByNumber(accountNumber));      
        if (accountUpdated) {
            response.sendRedirect("editAccount.jsp?success=Account updated successfully.");
        } else {
            response.sendRedirect("editAccount.jsp?error=Failed to update account.");
        }
    }
}