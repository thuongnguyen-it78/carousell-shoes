package thuongnguyen.it78.models;

public class Shoes {
    private int shoesID;
    private String shoesName;
    private String shoesDescription;
    private double shoesPrice;
    private int type;
    private int active;
    private String image;
    private int categoryID;

    public Shoes(int shoesID, String shoesName, String shoesDescription, double shoesPrice, int type, int active, String image, int categoryID) {
        this.shoesID = shoesID;
        this.shoesName = shoesName;
        this.shoesDescription = shoesDescription;
        this.shoesPrice = shoesPrice;
        this.type = type;
        this.active = active;
        this.image = image;
        this.categoryID = categoryID;
    }

    public Shoes(String shoesName, String shoesDescription, double shoesPrice, int type, String image, int categoryID) {
        this.shoesName = shoesName;
        this.shoesDescription = shoesDescription;
        this.shoesPrice = shoesPrice;
        this.type = type;
        this.image = image;
        this.categoryID = categoryID;
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

    public double getShoesPrice() {
        return shoesPrice;
    }

    public void setShoesPrice(double shoesPrice) {
        this.shoesPrice = shoesPrice;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public String toString() {
        return "Shoes{" +
                "shoesID=" + shoesID +
                ", shoesName='" + shoesName + '\'' +
                ", shoesDescription='" + shoesDescription + '\'' +
                ", shoesPrice=" + shoesPrice +
                ", type=" + type +
                ", active=" + active +
                ", image='" + image + '\'' +
                ", categoryID=" + categoryID +
                '}';
    }
}
