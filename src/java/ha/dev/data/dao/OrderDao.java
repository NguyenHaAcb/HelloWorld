package ha.dev.data.dao;

import java.util.List;

import ha.dev.data.dao.model.Order;

public interface OrderDao {

    public void insert(Order order);

    public void update(Order order);

    public void delete(int orderId);

    public Order find(int orderId);

    public Order find(String code);

    public List<Order> findAll();

    public List<Order> findByStatus(String status);

    public int countOrderByDay(String date);
}
