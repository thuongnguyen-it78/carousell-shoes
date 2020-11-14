package thuongnguyen.it78.models;

public class Shoes {
    private int shoesID;
    private String shoesName;
    private String shoesDescription;
    private int shoesGender;
    private String shoesImage;
    private double shoesPrice;
    private int shoesStock;
    private String shoesColor;
    private String shoesSize;

    public Shoes() {
    }

    public Shoes(int shoesID, String shoesName, String shoesDescription, int shoesGender, String shoesImage, double shoesPrice, int shoesStock, String shoesColor, String shoesSize) {
        this.shoesID = shoesID;
        this.shoesName = shoesName;
        this.shoesDescription = shoesDescription;
        this.shoesGender = shoesGender;
        this.shoesImage = shoesImage;
        this.shoesPrice = shoesPrice;
        this.shoesStock = shoesStock;
        this.shoesColor = shoesColor;
        this.shoesSize = shoesSize;
    }

    public int getShoesID() {
        return shoesID;
    }

    public void setShoesID(int shoesID) {
        this.shoesID = shoesID;
    }

    public String getShoesName() {
        return shoesName;
    }

    public void setShoesName(String shoesName) {
        this.shoesName = shoesName;
    }

    public String getShoesDescription() {
        return shoesDescription;
    }

    public void setShoesDescription(String shoesDescription) {
        this.shoesDescription = shoesDescription;
    }

    public int getShoesGender() {
        return shoesGender;
    }

    public void setShoesGender(int shoesGender) {
        this.shoesGender = shoesGender;
    }

    public String getShoesImage() {
        return shoesImage;
    }

    public void setShoesImage(String shoesImage) {
        this.shoesImage = shoesImage;
    }

    public double getShoesPrice() {
        return shoesPrice;
    }

    public void setShoesPrice(double shoesPrice) {
        this.shoesPrice = shoesPrice;
    }

    public int getShoesStock() {
        return shoesStock;
    }

    public void setShoesStock(int shoesStock) {
        this.shoesStock = shoesStock;
    }

    public String getShoesColor() {
        return shoesColor;
    }

    public void setShoesColor(String shoesColor) {
        this.shoesColor = shoesColor;
    }

    public String getShoesSize() {
        return shoesSize;
    }

    public void setShoesSize(String shoesSize) {
        this.shoesSize = shoesSize;
    }

    @Override
    public String toString() {
        return "Shoes{" +
                "shoesID=" + shoesID +
                ", shoesName='" + shoesName + '\'' +
                ", shoesDescription='" + shoesDescription + '\'' +
                ", shoesGender=" + shoesGender +
                ", shoesImage='" + shoesImage + '\'' +
                ", shoesPrice=" + shoesPrice +
                ", shoesStock=" + shoesStock +
                ", shoesColor='" + shoesColor + '\'' +
                ", shoesSize='" + shoesSize + '\'' +
                '}';
    }
}



