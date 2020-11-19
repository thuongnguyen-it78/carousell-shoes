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

@WebServlet("/me/info")
public class InfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        // tạo ra một map errors
        Map<String, String> messages = new HashMap<>();

        // tạo ra một account
        Account account = null;

        // lấy ra tất cả thông tin infor của account
        int accountID = Integer.parseInt(req.getParameter("accountID"));
        String fullName = req.getParameter("fullname");
        String number = req.getParameter("number");
        int gender = Integer.parseInt(req.getParameter("gender"));
        String address = req.getParameter("address");

        // kiểm tra lỗi của các giá trị
        if (fullName == null || fullName.isEmpty()) {
            messages.put("errorEmail", "Please enter fullname");
        }

        if (number == null || number.isEmpty()) {
            messages.put("errorNumber", "Please enter number");
        }

        if (gender != 0 && gender != 1) {
            messages.put("errorGender", "Please choose gender");
        }
        if (address == null || address.isEmpty()) {
            messages.put("errorAddress", "Please enter address");
        }

        // nếu có lỗi thì trả về cho người dùng và return
        if(!messages.isEmpty()) {
            req.setAttribute("error", "Thông tin nhập vào không hợp lệ. Vui lòng điền lại.");
            req.getRequestDispatcher("/views/information.jsp").forward(req, res);
            return;
        }

        // tạo account mới
        account = new Account();
        account.setAccountID(accountID);
        account.setAccountFullName(fullName);
        account.setAccountNumber(number);
        account.setAccountGender(gender);
        account.setAccountAddress(address);

        // update account
        if(!new AccountDAO().updateInfo(account)) {
            req.setAttribute("error", "Cập nhật thông tin thất bại.");
            req.getRequestDispatcher("/views/information.jsp").forward(req, res);
            return;
        }

        // lấy ra account hiện tại, và set lại giá trị cho nó

        Account accountLegal = (Account) req.getSession().getAttribute("account");
        accountLegal.setAccountFullName(fullName);
        accountLegal.setAccountNumber(number);
        accountLegal.setAccountGender(gender);
        accountLegal.setAccountAddress(address);

        req.getSession().setAttribute("account", accountLegal);

        req.setAttribute("success", "Cập nhật thông tin thành công.");
        req.getRequestDispatcher("/views/information.jsp").forward(req, res);













    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/information.jsp").forward(req, res);

    }
}
