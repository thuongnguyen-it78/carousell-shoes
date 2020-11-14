package thuongnguyen.it78.daos;

import java.sql.*;

public class ConnectDB {


    public static Connection getConnection(){
        String driver = "com.mysql.jdbc.Driver";
        String DB_username = "root";
        String DB_password = "";
        String DB_URL = "jdbc:mysql://127.0.0.1:3306/shoesv2";
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

    public static void excuteSQL(String query) throws SQLException {
        Connection connect = getConnection();
        PreparedStatement pstmt = connect.prepareStatement(query);
        pstmt.executeUpdate();
        pstmt.close();
        connect.close();
    }
    public static ResultSet selectData(String query) throws SQLException {
        Connection connect = getConnection();
        PreparedStatement pstmt = connect.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery();

        return rs;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Connection con = ConnectDB.getConnection();

        if(con != null) System.out.println("Connect to database success");
    }
}


