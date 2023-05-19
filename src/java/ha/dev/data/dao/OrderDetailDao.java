package ha.dev.data.dao;

import java.util.List;
import ha.dev.data.dao.model.OrderDetail;

public interface OrderDetailDao {

    public boolean insert(OrderDetail oderdetail);

    public boolean update(OrderDetail oderdetail);

    public boolean delete(int id);

    public OrderDetail find(int id);

    public List<OrderDetail> findAll();

    public List<OrderDetail> all();

    public List<OrderDetail> findByOrder(int orderId);
}
