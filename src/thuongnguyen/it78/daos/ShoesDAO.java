package thuongnguyen.it78.daos;


import thuongnguyen.it78.models.Shoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class ShoesDAO implements ObjectDAO {
    public static Map<Integer, Shoes> getAllShoes() {
        Map<Integer, Shoes> mapTemp = new HashMap<>();

        String query = "select sd.shoes_detail_id, s.shoes_name, s.shoes_description," +
                " s.shoes_gender, s.shoes_image, sd.shoes_detail_price, sd.shoes_detail_stock," +
                " sd.shoes_detail_color, ss.size_name from shoes as s, shoes_details as sd, sizes as ss" +
                " where s.shoes_id = sd.shoes_id and sd.size_id = ss.size_id";

        Connection connect = null;
        PreparedStatement pstmt = null;
        try {
            connect = ConnectDB.getConnection();
            pstmt = connect.prepareStatement(query);
            ResultSet rs =  pstmt.executeQuery();
            while(rs.next()) {
                int shoesID = Integer.parseInt(rs.getString(1));
                String shoesName = rs.getString(2);
                String shoesDescription = rs.getString(3);
                int shoesGender = Integer.parseInt(rs.getString(4));
                String shoesImage = rs.getString(5);
                double shoesPrice = Double.parseDouble(rs.getString(6));
                int shoesStock = Integer.parseInt(rs.getString(7));
                String shoesColor = rs.getString(8);
                String shoesSize = rs.getString(9);

                Shoes shoes = new Shoes(shoesID, shoesName, shoesDescription, shoesGender, shoesImage, shoesPrice, shoesStock, shoesColor, shoesSize);
                mapTemp.put(shoesID, shoes);
            }
            // clean up environment
            rs.close();
            pstmt.close();
            connect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return mapTemp;
    }

    public static Shoes getShoes(int id) {
        Map<Integer, Shoes> mapTemp = new HashMap<>();

        String query = "select sd.shoes_detail_id, s.shoes_name, s.shoes_description," +
                " s.shoes_gender, s.shoes_image, sd.shoes_detail_price, sd.shoes_detail_stock," +
                " sd.shoes_detail_color, ss.size_name from shoes as s, shoes_details as sd, sizes as ss" +
                " where s.shoes_id = sd.shoes_id and sd.size_id = ss.size_id and sd.shoes_detail_id = ?";

        Connection connect = null;
        PreparedStatement pstmt = null;
        try {
            connect = ConnectDB.getConnection();
            pstmt = connect.prepareStatement(query);
            pstmt.setInt(1, id);
            ResultSet rs =  pstmt.executeQuery();
            while(rs.next()) {
                int shoesID = Integer.parseInt(rs.getString(1));
                String shoesName = rs.getString(2);
                String shoesDescription = rs.getString(3);
                int shoesGender = Integer.parseInt(rs.getString(4));
                String shoesImage = rs.getString(5);
                double shoesPrice = Double.parseDouble(rs.getString(6));
                int shoesStock = Integer.parseInt(rs.getString(7));
                String shoesColor = rs.getString(8);
                String shoesSize = rs.getString(9);

                Shoes shoes = new Shoes(shoesID, shoesName, shoesDescription, shoesGender, shoesImage, shoesPrice, shoesStock, shoesColor, shoesSize);

                // clean up environment
                rs.close();
                pstmt.close();
                connect.close();

                return shoes;
            }
            // clean up environment
            rs.close();
            pstmt.close();
            connect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    public static void main(String[] args) {
        ShoesDAO shoesDAO = new ShoesDAO();
//        System.out.println(shoesDAO.getAllShoes());
//        System.out.println(shoesDAO.getShoes(4));

    }

}
