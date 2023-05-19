/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ha.dev.data.dao;

import ha.dev.data.dao.Impl.CategoryDaoImpl;
import ha.dev.data.dao.Impl.OrderDaoImpl;
import ha.dev.data.dao.Impl.OrderDetailDaoImpl;
import ha.dev.data.dao.Impl.ProductDaoImpl;
import ha.dev.data.dao.Impl.UserDaoImpl;



public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        // TODO Auto-generated method stub
        return new UserDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImpl();
    }
    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        return new OrderDaoImpl();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        return new OrderDetailDaoImpl();
    }

}