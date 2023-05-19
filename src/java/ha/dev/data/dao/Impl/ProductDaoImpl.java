package ha.dev.data.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import java.sql.ResultSet;
import java.sql.Timestamp;
//import java.time.OffsetTime;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import ha.dev.data.dao.ProductDao;
import ha.dev.data.dao.model.Product;
import ha.dev.data.driver.MySQLDriver;

public class ProductDaoImpl implements ProductDao {

    private Connection conn;

    public ProductDaoImpl() {
        this.conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(Product product) {
        // TODO Auto-generated method stub
        try {
            String sql = "INSERT INTO PRODUCTS(ID, NAME, DESCRIPTION, IMAGE, PRICE, QUANTITY, VIEW, CATEGORY_ID, CREATED_AT) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDescription());
            stmt.setString(3, product.getImage());
            stmt.setDouble(4, product.getPrice());
            stmt.setInt(5, product.getQuantity());
            stmt.setInt(6, product.getView());
            stmt.setInt(7, product.getCategoryId());

            stmt.setTimestamp(8, product.getCreatedAt());

            return stmt.execute();

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Product product) {
        // TODO Auto-generated method stub
        try {
            String sql = "UPDATE PRODUCTS SET NAME=?, DESCRIPTION=?, IMAGE=?, PRICE=?, QUANTITY=?, VIEW=?, CATEGORY_ID=?, CREATED_AT=?  WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDescription());
            stmt.setString(3, product.getImage());

            stmt.setDouble(4, product.getPrice());
            stmt.setInt(5, product.getQuantity());
            stmt.setInt(6, product.getView());
            stmt.setInt(7, product.getCategoryId());
            stmt.setTimestamp(8, product.getCreatedAt());
            stmt.setInt(9, product.getId());
            return stmt.execute();

        } catch (SQLException e) {
            // TODO: handle exception
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        // TODO Auto-generated method stub
        try {
            String sql = "DELETE FROM PRODUCTS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            return stmt.execute();

        } catch (SQLException e) {
            // TODO: handle exception
        }
        return false;
    }

    @Override
    public Product find(int id) {
        // TODO Auto-generated method stub
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                Double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");

                Timestamp createdAt = rs.getTimestamp("created_at");
                return new Product(id, name, description, image, price, quantity, view, createdAt, categoryId);
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }

        return null;
    }

    @Override
    public List<Product> findAll() {
        // TODO Auto-generated method stub
        List<Product> productList = new ArrayList<Product>();

        try {
            String sql = "SELECT * FROM PRODUCTS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                Double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                Timestamp createdAt = rs.getTimestamp("created_at");
                int categoryId = rs.getInt("category_id");

                productList.add(new Product(id, name, description, image, price, quantity, view, createdAt, categoryId));
            }
        } catch (SQLException ex) {
        }

        return productList;
    }

    public List<Product> findByCategory(int categoryId, String orderBy, String order) {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE CATEGORY_ID=? ORDER BY " + orderBy + " " + order;
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, categoryId);
//            stmt.setString(2, orderBy);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                Double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                Timestamp createdAt = rs.getTimestamp("created_at");

                productList.add(new Product(id, name, description, image, price, quantity, view, createdAt, categoryId));
            }
        } catch (SQLException ex) {
        }

        return productList;
    }

    @Override
    public List<Product> findALL() {
        // TODO Auto-generated method stub
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                Double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");
                Timestamp createdAt = rs.getTimestamp("created_at");
                productList.add(new Product(id, name, description, image, price, quantity, view, createdAt, categoryId));
            }
        } catch (SQLException ex) {
        }

        return productList;
    }

    @Override
    public List<Product> findByName(String key) {
        List<Product> productList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM PRODUCTS WHERE NAME LIKE ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + key + "%");

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                Double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");
                Timestamp createdAt = rs.getTimestamp("created_at");
                productList.add(new Product(id, name, description, image, price, quantity, view, createdAt, categoryId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return productList;
    }

    @Override
    public List<Product> searchByName(String productName) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT * FROM PRODUCTS WHERE NAME like ?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + productName + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                Double price = rs.getDouble("price");
                Integer quantity = rs.getInt("quantity");
                Integer view = rs.getInt("view");
                Integer categoryId = rs.getInt("category_id");
                Timestamp createdAt = rs.getTimestamp("created_at");
                String image = rs.getString("image");

                productList.add(new Product(id, name, description, image, price, quantity, view, createdAt, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

    @Override
    public List<Product> all() {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT * FROM PRODUCTS";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                Double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int view = rs.getInt("view");
                int categoryId = rs.getInt("category_id");
                Timestamp createdAt = rs.getTimestamp("created_at");
                String image = rs.getString("image");

                productList.add(new Product(id, name, description, image, price, quantity, view, createdAt, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

}
