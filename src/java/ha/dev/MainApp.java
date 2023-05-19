package ha.dev;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import ha.dev.data.dao.ProductDao;
import ha.dev.data.dao.UserDao;
import ha.dev.data.dao.Impl.ProductDaoImpl;
import ha.dev.data.dao.Impl.UserDaoImpl;
import ha.dev.data.dao.model.Product;
import ha.dev.data.dao.model.User;

public class MainApp {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        UserDao userDao = new UserDaoImpl();
        User user = new User("ha", "ad1", "user");
        userDao.insert(user);
        ProductDao productDao = new ProductDaoImpl();
//        Product product = new Product("ao nam", "giu nhiet","123", 200, 10, 10, 2, Timestamp.valueOf(LocalDateTime.now()));
//        productDao.insert(product);
    }
}
