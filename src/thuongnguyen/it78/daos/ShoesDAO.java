package thuongnguyen.it78.daos;

import thuongnguyen.it78.models.Account;
import thuongnguyen.it78.models.Shoes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class ShoesDAO implements  ObjectDAO{
    public static Map<Integer, Shoes> getListShoes() {
        Map<Integer, Shoes> mapTemp = new HashMap<>();

        String query = "select * from shoes";

        try {
            ResultSet rs =  new ConnectDB().selectData(query);
            while(rs.next()) {
                int id = Integer.parseInt(rs.getString(1));
                String name = rs.getString(2);
                String description = rs.getString(3);
                double price = Double.parseDouble(rs.getString(4));
                int type = Integer.parseInt(rs.getString(5));
                int active = Integer.parseInt(rs.getString(6));
                String image = rs.getString(7);
                int categoryID = Integer.parseInt(rs.getString(8));
                Shoes shoes = new Shoes(id, name, description, price, type, active, image, categoryID);

                mapTemp.put(shoes.getShoesID(), shoes);


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mapTemp;
    }

    public static void main(String[] args) {
        System.out.println(getListShoes());
    }
}
