package tw.com.ssh.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private Integer id;
	
	@Column(length = 255, nullable = false, name = "product_name")
	private String name;
	
	@Column(length = 255, nullable = false)
	private String description;
	
	@Column(length = 255, nullable = false)
	private long price;

	@Column(length = 455, nullable = false)
	private String pic;
	
	public Product() {
	}

	public Product(Integer id, String name, String description, long price, String pic) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.pic = pic;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + ", pic="
				+ pic + "]";
	}

	
}
