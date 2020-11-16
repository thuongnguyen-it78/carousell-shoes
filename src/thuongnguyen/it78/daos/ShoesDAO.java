package thuongnguyen.it78.daos;


import thuongnguyen.it78.models.Shoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ShoesDAO implements ObjectDAO {
    public static ArrayList<Shoes> getListShoesDetail() {
        ArrayList<Shoes> listShoes = new ArrayList<Shoes>();

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
                listShoes.add(shoes);
            }
            // clean up environment
            rs.close();
            pstmt.close();
            connect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listShoes;
    }

    public static ArrayList<Shoes> getListShoesByGender(int gender) {
        ArrayList<Shoes> listShoes = new ArrayList<Shoes>();

        String query = "select s.shoes_id, s.shoes_name, s.shoes_image, sd.shoes_detail_price, " +
                "sd.shoes_detail_color from shoes as s, shoes_details as sd where s.shoes_id = " +
                "sd.shoes_id and s.shoes_gender = ? group by shoes_id, shoes_name, shoes_image, " +
                "shoes_detail_price, shoes_detail_color";

        Connection connect = null;
        PreparedStatement pstmt = null;
        try {
            connect = ConnectDB.getConnection();
            pstmt = connect.prepareStatement(query);
            pstmt.setInt(1, gender);
            ResultSet rs =  pstmt.executeQuery();
            while(rs.next()) {
                int shoesID = Integer.parseInt(rs.getString(1));
                String shoesName = rs.getString(2);
                String shoesImage = rs.getString(3);
                double shoesPrice = Double.parseDouble(rs.getString(4));
                String shoesColor = rs.getString(5);

                Shoes shoes = new Shoes();
                shoes.setShoesID(shoesID);
                shoes.setShoesName(shoesName);
                shoes.setShoesImage(shoesImage);
                shoes.setShoesPrice(shoesPrice);
                shoes.setShoesColor(shoesColor);

                listShoes.add(shoes);
            }
            // clean up environment
            rs.close();
            pstmt.close();
            connect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listShoes;
    }

    public static ArrayList<Shoes> getListShoesByCategory(int categoryID) {
        ArrayList<Shoes> listShoes = new ArrayList<Shoes>();

        String query = "select s.shoes_id, s.shoes_name, s.shoes_image, sd.shoes_detail_price, sd.shoes_detail_color " +
                "from shoes as s, shoes_details as sd, categories as c " +
                "where s.shoes_id = sd.shoes_id and s.shoes_gender = 1 and s.category_id = ? " +
                "group by shoes_id, shoes_name, shoes_image, shoes_detail_price, shoes_detail_color";

        Connection connect = null;
        PreparedStatement pstmt = null;
        try {
            connect = ConnectDB.getConnection();
            pstmt = connect.prepareStatement(query);
            pstmt.setInt(1, categoryID);
            ResultSet rs =  pstmt.executeQuery();
            while(rs.next()) {
                int shoesID = Integer.parseInt(rs.getString(1));
                String shoesName = rs.getString(2);
                String shoesImage = rs.getString(3);
                double shoesPrice = Double.parseDouble(rs.getString(4));
                String shoesColor = rs.getString(5);

                Shoes shoes = new Shoes();
                shoes.setShoesID(shoesID);
                shoes.setShoesName(shoesName);
                shoes.setShoesImage(shoesImage);
                shoes.setShoesPrice(shoesPrice);
                shoes.setShoesColor(shoesColor);

                listShoes.add(shoes);
            }
            // clean up environment
            rs.close();
            pstmt.close();
            connect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listShoes;
    }

    public static Shoes getShoes(int shoesId) {

        String query = "select sd.shoes_detail_id, s.shoes_name, s.shoes_image, s.shoes_description," +
                " sd.shoes_detail_price, sd.shoes_detail_color, sd.shoes_detail_stock, ss.size_name " +
                "from shoes as s, shoes_details as sd, sizes as ss " +
                "where s.shoes_id = sd.shoes_id and sd.shoes_id = ? and sd.size_id = ss.size_id and ss.size_id = 1 " +
                "limit 1;";

        Connection connect = null;
        PreparedStatement pstmt = null;
        try {
            connect = ConnectDB.getConnection();
            pstmt = connect.prepareStatement(query);
            pstmt.setInt(1, shoesId);
            ResultSet rs =  pstmt.executeQuery();
            while(rs.next()) {
                int shoesID = Integer.parseInt(rs.getString(1));
                String shoesName = rs.getString(2);
                String shoesImage = rs.getString(3);
                String shoesDescription = rs.getString(4);
                double shoesPrice = Double.parseDouble(rs.getString(5));
                String shoesColor = rs.getString(6);
                int shoesStock = Integer.parseInt(rs.getString(7));
                String shoesSize = rs.getString(8);

                Shoes shoes = new Shoes();

                shoes.setShoesID(shoesID);
                shoes.setShoesName(shoesName);
                shoes.setShoesImage(shoesImage);
                shoes.setShoesDescription(shoesDescription);
                shoes.setShoesPrice(shoesPrice);
                shoes.setShoesColor(shoesColor);
                shoes.setShoesStock(shoesStock);
                shoes.setShoesSize(shoesSize);

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

    public static Shoes getShoesBySize(int shoesId, int sizeId) {

        String query = "select sd.shoes_detail_id, s.shoes_name, s.shoes_image, s.shoes_description," +
                " sd.shoes_detail_price, sd.shoes_detail_color, sd.shoes_detail_stock, ss.size_name " +
                "from shoes as s, shoes_details as sd, sizes as ss " +
                "where s.shoes_id = sd.shoes_id and sd.shoes_id = ? and sd.size_id = ss.size_id and ss.size_id = ? " +
                "limit 1;";

        Connection connect = null;
        PreparedStatement pstmt = null;
        try {
            connect = ConnectDB.getConnection();
            pstmt = connect.prepareStatement(query);
            pstmt.setInt(1, shoesId);
            pstmt.setInt(2, sizeId);
            ResultSet rs =  pstmt.executeQuery();
            while(rs.next()) {
                int shoesID = Integer.parseInt(rs.getString(1));
                String shoesName = rs.getString(2);
                String shoesImage = rs.getString(3);
                String shoesDescription = rs.getString(4);
                double shoesPrice = Double.parseDouble(rs.getString(5));
                String shoesColor = rs.getString(6);
                int shoesStock = Integer.parseInt(rs.getString(7));
                String shoesSize = rs.getString(8);

                Shoes shoes = new Shoes();

                shoes.setShoesID(shoesID);
                shoes.setShoesName(shoesName);
                shoes.setShoesImage(shoesImage);
                shoes.setShoesDescription(shoesDescription);
                shoes.setShoesPrice(shoesPrice);
                shoes.setShoesColor(shoesColor);
                shoes.setShoesStock(shoesStock);
                shoes.setShoesSize(shoesSize);

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



//    public static ArrayList<Shoes> getAllShoesByGender(int gender) {
//        ArrayList<Shoes> listShoes = new ArrayList<Shoes>();
//
//        String query = "select s.shoes_id, s.shoes_name, s.shoes_image, sd.shoes_detail_price, " +
//                "sd.shoes_detail_color from shoes as s, shoes_details as sd where s.shoes_id = " +
//                "sd.shoes_id and s.shoes_gender = ? group by shoes_id, shoes_name, shoes_image, " +
//                "shoes_detail_price, shoes_detail_color";
//
//        Connection connect = null;
//        PreparedStatement pstmt = null;
//        try {
//            connect = ConnectDB.getConnection();
//            pstmt = connect.prepareStatement(query);
//            pstmt.setInt(1, gender);
//            ResultSet rs =  pstmt.executeQuery();
//            while(rs.next()) {
//                int shoesID = Integer.parseInt(rs.getString(1));
//                String shoesName = rs.getString(2);
//                String shoesImage = rs.getString(3);
//                double shoesPrice = Double.parseDouble(rs.getString(4));
//                String shoesColor = rs.getString(5);
//
//                Shoes shoes = new Shoes();
//                shoes.setShoesID(shoesID);
//                shoes.setShoesName(shoesName);
//                shoes.setShoesImage(shoesImage);
//                shoes.setShoesPrice(shoesPrice);
//                shoes.setShoesColor(shoesColor);
//
//                listShoes.add(shoes);
//            }
//            // clean up environment
//            rs.close();
//            pstmt.close();
//            connect.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return listShoes;
//    }



    public static void main(String[] args) {
        ShoesDAO shoesDAO = new ShoesDAO();
//        System.out.println(shoesDAO.getAllShoesDetails());
//        System.out.println(shoesDAO.getAllShoesByGender(2));
        System.out.println(shoesDAO.getShoes(139));
//        System.out.println(shoesDAO.getShoesBySize(1, 3));
//        System.out.println(shoesDAO.getListShoesByCategory(5 ));

    }

}
