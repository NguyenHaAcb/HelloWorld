package ha.dev.data.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
import java.sql.SQLException;

import ha.dev.data.dao.CategoryDao;
import ha.dev.data.dao.model.Category;

import ha.dev.data.driver.MySQLDriver;

public class CategoryDaoImpl implements CategoryDao {

    private Connection conn;

    public CategoryDaoImpl() {
        this.conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(Category category) {
        // TODO Auto-generated method stub
        try {
            String sql = "INSERT INTO CATEGORIES(id, name, img) VALUES(NULL,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, category.getName());
            stmt.setString(2, category.getimg());
           

            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return false;
    }

    @Override
    public boolean update(Category category) {
        // TODO Auto-generated method stub
        try {
            String sql = "UPDATE CATEGORIES SET NAME=?, IMG=? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, category.getName());
            stmt.setString(2, category.getimg());
             stmt.setInt(3, category.getId());

            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        // TODO Auto-generated method stub
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "DELETE FROM CATEGORIES WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, id);
            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return false;
    }

    @Override
    public Category find(int id) {
        // TODO Auto-generated method stub
        try {
            String sql = "SELECT * FROM CATEGORIES WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                String img = rs.getString("img");
                return new Category(id, name, img);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    @Override
    public List<Category> findAll() {
        // TODO Auto-generated method stub
        List<Category> categoryList = new ArrayList<Category>();
        try {
            String sql = "SELECT * FROM CATEGORIES";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");

                categoryList.add(new Category(id, name, img));
            }
        } catch (SQLException ex) {
        }

        return categoryList;
    }

}
