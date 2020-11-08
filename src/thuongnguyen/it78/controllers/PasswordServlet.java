package thuongnguyen.it78.controllers;

import thuongnguyen.it78.daos.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/me/password")
public class PasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int accountID = Integer.parseInt(req.getParameter("accountID"));
        String password = req.getParameter("password");
        String newPassword = req.getParameter("newpassword");


        if(!AccountDAO.checkPassword(accountID, password)) {
            String error = "Mật khẩu hiện tại không đúng. Hãy thử nhập lại.";
            req.setAttribute("error", error);
            req.getRequestDispatcher("/views/change-pw.jsp").forward(req, res);
            return;
        }

        if(AccountDAO.getPassword(accountID).equals(newPassword)) {
            String error = "Password cũ không được trùng với password mới";
            req.setAttribute("error", error);
            req.getRequestDispatcher("/views/change-pw.jsp").forward(req, res);
            return;
        }

        if(!AccountDAO.changePassword(accountID, newPassword)) {
            String error = "Cập nhật thất bại, vui lòng thử lại..";
            req.setAttribute("error", error);
            req.getRequestDispatcher("/views/change-pw.jsp").forward(req, res);
            return;
        }



        String success = "Cập nhật thành công.";
        req.setAttribute("success", success);
        req.getRequestDispatcher("/views/change-pw.jsp").forward(req, res);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/change-pw.jsp").forward(req, res);

    }
}
