package thuongnguyen.it78.controllers;

import thuongnguyen.it78.configs.JavaMail;
import thuongnguyen.it78.daos.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/account/forgot")
public class ForgotServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String email = req.getParameter("email");

        if(!AccountDAO.checkEmail(email)) {
            String error = " Tên email này không tồn tại trong hệ thống. Hãy thử tên khác.";
            req.setAttribute("error", error);
            req.setAttribute("email", email);
            req.getRequestDispatcher("/views/forget-pw.jsp").forward(req, res);
            return;
        }
        String newPassword = "123456789";
        boolean isSuccess = JavaMail.send(email,"New PassWord", newPassword);

        if(!isSuccess) {
            String error = "Thất bại, vui lòng thử lại.";
            req.setAttribute("error", error);
            req.setAttribute("email", email);
            req.getRequestDispatcher("/views/forget-pw.jsp").forward(req, res);
            return;
        }

        if(!new AccountDAO().updatePassword(email, newPassword)) {
            String error = "Thất bại, vui lòng thử lại.";
            req.setAttribute("error", error);
            req.setAttribute("email", email);
            req.getRequestDispatcher("/views/forget-pw.jsp").forward(req, res);
            return;
        }


        String success = "Thành công!. Vui lòng kiểm tra mail của bạn.";
        req.setAttribute("success", success);
        req.getRequestDispatcher("/views/forget-pw.jsp").forward(req, res);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/forget-pw.jsp").forward(req, res);

    }
}

