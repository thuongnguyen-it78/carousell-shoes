package thuongnguyen.it78.daos;

import thuongnguyen.it78.models.Account;
import thuongnguyen.it78.models.ConnectDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class AccountDAO {
    public static Map<String, Account> mapAccounts = loadData();

    public AccountDAO() {

    }
    public static Map<String, Account> loadData() {
        Map<String, Account> mapTemp = new HashMap<>();

        String query = "select * from accounts";

        try {
            ResultSet rs =  new ConnectDB().selectData(query);
            while(rs.next()) {
                int id = Integer.parseInt(rs.getString(1));
                String email = rs.getString(2);
                String password = rs.getString(3);
                String fullname = rs.getString(4);
                String number = rs.getString(5);
                int gender = Integer.parseInt(rs.getString(6));
                String address = rs.getString(7);
                String avatar = rs.getString(8);
                int role = Integer.parseInt(rs.getString(9));

                Account account = new Account(id, email, password, fullname,
                        number, gender, address, avatar, role);
                mapTemp.put(account.getAccountEmail(), account);


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mapTemp;
    }

    public boolean checkLogin(String email, String password) {
        Account account = mapAccounts.get(email);
        if(account == null) return false;
        if(!account.getAccountPassword().equals(password)) return false;
        return true;
    }

    public static void main(String[] args) {
        AccountDAO accountDAO = new AccountDAO();

        System.out.println(accountDAO.mapAccounts);
        System.out.println(accountDAO.checkLogin("thuongnguyen.it78@gmail.com", "123456"));
    }
}
