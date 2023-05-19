package ha.dev.data.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;

import ha.dev.data.dao.OrderDao;
import ha.dev.data.dao.model.Order;
import ha.dev.data.driver.MySQLDriver;

import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderDaoImpl implements OrderDao {

    private final Connection conn;

    public OrderDaoImpl() {
        this.conn = (Connection) MySQLDriver.getInstance().getConnection();
    }

    @Override
    public void insert(Order order) {
        try {
            String sql = "INSERT INTO ORDERS(ID, CODE, STATUS, USER_ID) VALUES(NULL,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.code);
            stmt.setString(2, order.status);
            stmt.setInt(3, order.userId);

            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    @Override
    public void update(Order order) {

        try {
            String sql = "UPDATE ORDERS SET CODE=?, STATUS=?, USER_ID =? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.code);
            stmt.setString(3, order.status);
            stmt.setInt(4, order.userId);

            stmt.setInt(5, order.id);
            stmt.execute();
        } catch (SQLException e) {
        }
    }

    @Override
    public void delete(int orderId) {
        try {
            String sql = "DELETE FROM ORDERS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, orderId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }

    }

    @Override
    public Order find(int orderId) {
        try {
            String sql = "SELECT * FROM ORDERS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            ResultSet rs = (ResultSet) stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("user_id");
                return new Order(id, code, status, userId);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    @Override
    public Order find(String code) {
        try {
            String sql = "SELECT * FROM ORDERS WHERE CODE = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, code);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String status = rs.getString("status");
                int userId = rs.getInt("user_id");
                return new Order(id, code, status, userId);
            }

        } catch (SQLException e) {
        }
        return null;
    }

    @Override
    public List<Order> findAll() {
        List<Order> orderList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM ORDERS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                String status = rs.getString("status");
                int userId = rs.getInt("user_id");
                orderList.add(new Order(id, code, status, userId));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return orderList;
    }

    @Override
    public List<Order> findByStatus(String status) {
        List<Order> orderList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM ORDERS WHERE STATUS=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, status);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String code = rs.getString("code");
                int userId = rs.getInt("user_id");
                orderList.add(new Order(id, code, status, userId));
            }
        } catch (SQLException ex) {
        }

        return orderList;
    }

    @Override
    public int countOrderByDay(String date) {
        int count = 0;
        String sql = "SELECT COUNT(*) AS count FROM orders where date(created_at)=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, date);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                count = rs.getInt("count");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
}


