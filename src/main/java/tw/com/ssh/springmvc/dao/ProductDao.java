package tw.com.ssh.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import tw.com.ssh.springmvc.entity.Product;


@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//新增
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//取得全部的UserInfo
	public List<Product> getProducts(){
		List<Product> products=this.hibernateTemplate.loadAll(Product.class);
		return products;
		
		
	}
	
	public List<Product> getProductsDesc(){
		return null;
	}
	
	//刪除
	@Transactional
	public void deleteProduct(Integer id) {
		Product p=this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(p);
	}
	
	
	//取得單一個User
	@Transactional
	public Product getProduct(Integer id) {
		return this.hibernateTemplate.get(Product.class, id);
		
	}
}
