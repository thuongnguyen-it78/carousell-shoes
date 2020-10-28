package thuongnguyen.it78.controllers;

import java.sql.*;

public class ConnectDB {


    public static Connection getConnection(){
        String driver = "com.mysql.jdbc.Driver";
        String DB_username = "root";
        String DB_password = "";
        String DB_URL = "jdbc:mysql://localhost:3306/employees";
        Connection connect = null;

        try {
            Class.forName(driver);
            connect = DriverManager.getConnection(DB_URL, DB_username, DB_password);
            return connect;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Exception " + e);
            return null;
        }
    }

    public void excuteSQL(String query) throws SQLException {
        Connection connect = getConnection();
        PreparedStatement stmt = (PreparedStatement) connect.createStatement();
        stmt.execute(query);
    }
    public ResultSet selectData(String quey) throws SQLException {
        Connection connect = getConnection();
        PreparedStatement stmt = (PreparedStatement) connect.createStatement();
        ResultSet rs = stmt.executeQuery(quey);
        return rs;
    }



    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Connection con = ConnectDB.getConnection();

        if(con != null) System.out.println("Connect to database success");
    }
}


