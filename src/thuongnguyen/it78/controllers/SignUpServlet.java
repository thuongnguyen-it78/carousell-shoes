package thuongnguyen.it78.controllers;

import thuongnguyen.it78.daos.AccountDAO;
import thuongnguyen.it78.models.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/auth/signup")
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        String fullName = req.getParameter("fullname").trim();
        String number = req.getParameter("number").trim();
        int gender = Integer.parseInt(req.getParameter("gender"));
        String address = req.getParameter("address").trim();

        if(AccountDAO.checkEmail(email)) {
            req.setAttribute("errorEmail", "Email này đã có người đăng kí !");
            req.getRequestDispatcher("/views/signup.jsp").forward(req, res);
            return;
        }

        Account account = new Account(email, password, fullName, number, gender, address);

        new AccountDAO().create(account);

        res.sendRedirect("/");
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/signup.jsp").forward(req, res);

    }
}
