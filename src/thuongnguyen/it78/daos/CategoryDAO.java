package thuongnguyen.it78.daos;

import thuongnguyen.it78.models.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class CategoryDAO {
    // get all categories
    public static Map<Integer, Category> getAllCategories() {
        Map<Integer, Category> mapTemp = new HashMap<>();

        String query = "select * from categories";
        Connection connect = null;
        PreparedStatement pstmt = null;
        try {
            connect = ConnectDB.getConnection();
            pstmt = connect.prepareStatement(query);
            ResultSet rs =  pstmt.executeQuery();
            while(rs.next()) {
                int categoryID = Integer.parseInt(rs.getString(1));
                String categoryName = rs.getString(2);
                String categoryDescription = rs.getString(3);

                Category category = new Category(categoryID, categoryName, categoryDescription);

                mapTemp.put(categoryID, category);
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


    public static void main(String[] args) {
        CategoryDAO categoryDAO = new CategoryDAO();
//        System.out.println(categoryDAO.getAllCategories());

    }
}
