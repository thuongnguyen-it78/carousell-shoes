package thuongnguyen.it78.controllers;

import thuongnguyen.it78.daos.AccountDAO;
import thuongnguyen.it78.models.Account;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/account/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Map<String, String> messages = new HashMap<>();

        if (email == null || email.isEmpty()) {
            messages.put("email", "Please enter email");
        }

        if (password == null || password.isEmpty()) {
            messages.put("password", "Please enter password");
        }

        if (messages.isEmpty()) {
            Account account = AccountDAO.getAccount(email, password);

            if (account != null) {
                req.getSession().setAttribute("account", account);
                res.sendRedirect("/");
                return;
            }

            req.setAttribute("error", "Email hoặc mật khẩu không chính xác. Hãy thử đăng nhập lại.");
            req.setAttribute("email", email);
            req.getRequestDispatcher("/views/login.jsp").forward(req, res);


        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/login.jsp").forward(req, res);
    }
}
