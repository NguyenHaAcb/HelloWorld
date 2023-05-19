package ha.dev.data.dao;

import java.util.List;

import ha.dev.data.dao.model.Product;



public interface ProductDao {
	public boolean insert(Product product);
	public boolean update(Product product);
	public boolean delete(int id);
	public Product find (int id);
	public List<Product> findAll();

    public List<Product> findALL();

    public List<Product> findByCategory(int categoryId, String orderBy, String order);

    public List<Product> findByName(String search);

    public List<Product> searchByName(String productName);

    public List<Product> all();

  

   
	
}
