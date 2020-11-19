package thuongnguyen.it78.controllers;

import thuongnguyen.it78.daos.AccountDAO;
import thuongnguyen.it78.models.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/account/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        // tạo ra một map arrays
        Map<String, String> messages = new HashMap<>();

        // tạo ra một account
        Account account = null;

        // lấy ra các giá trị từ params
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        String fullName = req.getParameter("fullname").trim();
        String number = req.getParameter("number").trim();
        int gender = Integer.parseInt(req.getParameter("gender"));
        String address = req.getParameter("address").trim();

        // kiểm tra nếu có lỗi thì add vào map

        if (email == null || email.isEmpty()) {
            messages.put("errorEmail", "Please enter email");
        }

        if (password == null || password.isEmpty()) {
            messages.put("errorPassword", "Please enter password");
        }
        if (fullName == null || fullName.isEmpty()) {
            messages.put("errorEmail", "Please enter fullname");
        }

        if (number == null || fullName.isEmpty()) {
            messages.put("errorNumber", "Please enter number");
        }

        if (gender != 0 || gender != 1) {
            messages.put("errorGender", "Please choose gender");
        }
        if (address == null || address.isEmpty()) {
            messages.put("errorAddress", "Please enter address");
        }

        // tạo ra giá trị account
        account = new Account();
        account.setAccountEmail(email);
        account.setAccountPassword(password);
        account.setAccountFullName(fullName);
        account.setAccountNumber(number);
        account.setAccountGender(gender);
        account.setAccountAddress(address);

        // nếu messages không rỗng và email tồn tại thì return error
        if (messages.isEmpty() || AccountDAO.checkEmail(email)) {
            String error = "Tên email này đã được sử dụng. Hãy thử tên khác.";
            req.setAttribute("account", account);
            req.setAttribute("errorEmail", error);
            req.getRequestDispatcher("/views/signup.jsp").forward(req, res);
            return;
        }

        // tạo ra account và lưu vào database và return
        new AccountDAO().create(account);
        Account accountLegal = new AccountDAO().getAccount(account.getAccountEmail(), account.getAccountPassword());
        req.getSession().setAttribute("account", accountLegal);
        res.sendRedirect("/");
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/signup.jsp").forward(req, res);

    }
}
