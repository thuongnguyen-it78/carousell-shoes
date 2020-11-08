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

        req.setCharacterEncoding("UTF-8");

        Map<String, String> messages = new HashMap<>();
        Account account = null;

        int accountID = Integer.parseInt(req.getParameter("accountID"));
        String fullName = req.getParameter("fullname");
        String number = req.getParameter("number");
        int gender = Integer.parseInt(req.getParameter("gender"));
        String address = req.getParameter("address");


        if (fullName == null || fullName.isEmpty()) {
            messages.put("errorEmail", "Please enter fullname");
        }

        if (number == null || number.isEmpty()) {
            messages.put("errorNumber", "Please enter number");
        }

        if (gender != 0 || gender != 1) {
            messages.put("errorGender", "Please choose gender");
        }
        if (address == null || address.isEmpty()) {
            messages.put("errorAddress", "Please enter address");
        }

        if(messages.isEmpty()) {
            req.setAttribute("error", "Thông tin nhập vào không hợp lệ. Vui lòng điền lại.");
            req.getRequestDispatcher("/views/information.jsp").forward(req, res);
            return;
        }

        account = new Account(accountID, fullName, number, gender, address);


        if(!new AccountDAO().updateInfo(account)) {
            req.setAttribute("error", "Cập nhật thông tin thất bại.");
            req.getRequestDispatcher("/views/information.jsp").forward(req, res);
            return;
        }


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
