package thuongnguyen.it78.daos;

import thuongnguyen.it78.models.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class AccountDAO implements ObjectDAO{

    public AccountDAO() {

    }
    public static Map<Integer, Account> getAccounts() {
        Map<Integer, Account> mapTemp = new HashMap<>();

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
                mapTemp.put(account.getAccountID(), account);


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mapTemp;
    }

    public static Account getAccount(int accountID) {
        Account account;
        String query = "select * from accounts where account_id = " + accountID;

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

                account = new Account(id, email, password, fullname,
                        number, gender, address, avatar, role);
                return account;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean add(Object obj) {
        Account account = (Account) obj;
        String query ="insert accounts (account_email, account_password," +
                " account_fullname, account_number, account_gender, " +
                "account_address) values(?, ?, ?, ?, ?, ?)";
        Connection connect = ConnectDB.getConnection();
        try {
            PreparedStatement pstmt = connect.prepareStatement(query);
            pstmt.setString(1, account.getAccountEmail());
            pstmt.setString(2, account.getAccountPassword());
            pstmt.setString(3, account.getAccountFullname());
            pstmt.setString(4, account.getAccountNumber());
            pstmt.setInt(5, account.getAccountGender());
            pstmt.setString(6, account.getAccountAddress());
            pstmt.executeUpdate();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String query = "delete from accounts where account_id = '" + id +"'";
        try {
            ConnectDB.excuteSQL(query);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Object obj) {
        Account account = (Account) obj;

        String query = "update accounts set account_fullname = ?, " +
                "account_password = ?, account_address = ?, account_gender = ?," +
                "account_avatar = ?, account_number = ?";
        Connection connect = ConnectDB.getConnection();
        try {
            PreparedStatement pstmt = connect.prepareStatement(query);
            pstmt.setString(1, account.getAccountFullname());
            pstmt.setString(2, account.getAccountPassword());
            pstmt.setString(3, account.getAccountAddress());
            pstmt.setInt(4, account.getAccountGender());
            pstmt.setString(5, account.getAccountAvatar());
            pstmt.setString(6, account.getAccountNumber());

            return true;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean changePassword(int id, String newPassword) {
        String query = "update accounts set account_password = '"
                + newPassword + "' where account_id = " + id;

        try {
            new ConnectDB().excuteSQL(query);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean checkLogin(String email, String password) {
        String query = "select * from accounts where account_email='" + email
                + "' and account_password='" + password + "'";
        try {
            ResultSet rs = new ConnectDB().selectData(query);
            if(rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean checkEmail(String email) {
        String query = "select * from accounts where account_email='" + email
                + "'";
        try {
            ResultSet rs = new ConnectDB().selectData(query);
            if(rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        AccountDAO accountDAO = new AccountDAO();

        System.out.println(accountDAO.getAccounts());
        System.out.println(accountDAO.getAccount(1));
        System.out.println(accountDAO.checkLogin("thuongnguyen.it78@gmail.com", "123456"));
        System.out.println(AccountDAO.changePassword(1, "123456"));
        System.out.println(AccountDAO.checkEmail("thuongnguyen.it79@gmail.com"));
    }
}
