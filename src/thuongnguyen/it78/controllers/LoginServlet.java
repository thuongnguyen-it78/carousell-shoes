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

@WebServlet("/auth/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        Map<String, String> messages = new HashMap<>();

        if (username == null || username.isEmpty()) {
            messages.put("username", "Please enter username");
        }

        if (password == null || password.isEmpty()) {
            messages.put("password", "Please enter password");
        }

        if (messages.isEmpty()) {
            Account account = AccountDAO.getAccount(username, password);

            if (account != null) {
                req.getSession().setAttribute("user", account);
                res.sendRedirect("/home");
                return;
            } else {
                messages.put("login", "Unknown login, please try again");
            }
        }

        req.setAttribute("messages", messages);
        req.getRequestDispatcher("/login.jsp").forward(req, res);


    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//        req.getRequestDispatcher("/views/index.jsp").forward(req, res);
    }
}
