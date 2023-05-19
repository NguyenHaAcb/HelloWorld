package ha.dev.data.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import ha.dev.data.dao.UserDao;
import ha.dev.data.dao.model.User;
import ha.dev.data.driver.MySQLDriver;
import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import util.MD5Hashing;

public class UserDaoImpl implements UserDao {

    private Connection conn;

    public UserDaoImpl() {
        this.conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(User user) {
        // TODO Auto-generated method stub
        try {
            String sql = "INSERT INTO USERS(ID, EMAIL, PASSWORD, ROLE) VALUES (NULL, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getEmail());
           stmt.setString(2, MD5Hashing.getMD5(user.getPassword()));
            stmt.setString(3, user.getRole());

            return stmt.execute();
        } catch (Exception e) {

        }

        return false;
    }

    @Override
    public boolean update(User user) {
        // TODO Auto-generated method stub
        try {
            String sql = "UPDATE USERS SET EMAIL=?, PASSWORD=?, ROLE=?, WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());

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
            String sql = "DELETE FROM USERS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);

            return stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return false;
    }

    @Override
    public User find(int id) {
        // TODO Auto-generated method stub
        try {
            String sql = "SELECT * FROM USERS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");

                return new User(id, email, password, role);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    @Override
    public List<User> findAll() {
        // TODO Auto-generated method stub
        List<User> userList = new ArrayList<User>();
        try {
            String sql = "SELECT * FROM USERS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                userList.add(new User(id, email, password, role));
            }
        } catch (SQLException ex) {
        }

        return userList;
    }

    @Override
    public User find(String email, String password) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM USERS WHERE EMAIL=? AND PASSWORD=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String role = rs.getString("role");

                return new User(id, email, password, role);
            }
        } catch (SQLException ex) {
            // TODO: handle exception
        }
        return null;
    }

    @Override
    public User findByEmail(String email) {
        String sql = "SELECT * FROM USERS WHERE EMAIL=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String password = rs.getString("password");
                String role = rs.getString("role");

                return new User(id, email, password, role);
            }
        } catch (SQLException ex) {

        }
        return null;
    }

    @Override
    public User login(String email, String password) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM USERS WHERE email=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String role = rs.getString("role");
                return new User(id, email, password, role);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    @Override
    public User register(String email, String password) {
        insert(new User(email, password, "user"));
        return login(email, password);
    }

}
