package thuongnguyen.it78.daos;

public interface ObjectDAO {

    default boolean create(Object obj) {
        return false;
    }
    default boolean update(Object obj) {
        return false;
    }
    default boolean delete(int id) {
        return false;
    }


}
