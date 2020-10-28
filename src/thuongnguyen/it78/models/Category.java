package thuongnguyen.it78.models;

public class Category {
     private int categoryID;
     private String categoryName;
     private String categoryDescription;

    public Category(int categoryID, String categoryName, String categoryDescription) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.categoryDescription = categoryDescription;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    @Override
    public String toString() {
        return "Category{" +
                "categoryID=" + categoryID +
                ", categoryName='" + categoryName + '\'' +
                ", categoryDescription='" + categoryDescription + '\'' +
                '}';
    }
}
