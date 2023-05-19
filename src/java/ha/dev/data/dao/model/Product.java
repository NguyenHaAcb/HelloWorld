package ha.dev.data.dao.model;

import java.sql.Timestamp;

public class Product {

    private int id;
    private String name;
    private String description;
    private String image;
    private double price;
    private int quantity;
    private int view;
    private Timestamp createdAt;
    private int categoryId;

    public Product(String name, String description, String image, double price, int quantity, int view, Timestamp createdAt, int categoryId) {
        this.name = name;
        this.description = description;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.view = view;
        this.createdAt = createdAt;
        this.categoryId = categoryId;
    }

    public Product(int id, String name, String description, String image, double price, int quantity, int view, Timestamp createdAt, int categoryId) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.view = view;
        this.createdAt = createdAt;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

}
