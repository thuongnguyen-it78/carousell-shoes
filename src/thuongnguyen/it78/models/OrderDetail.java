package thuongnguyen.it78.models;

public class OrderDetail {
    private int ShoesID;
    private int OrderID;
    private int quantity;

    public int getShoesID() {
        return ShoesID;
    }

    public void setShoesID(int shoesID) {
        ShoesID = shoesID;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int orderID) {
        OrderID = orderID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
