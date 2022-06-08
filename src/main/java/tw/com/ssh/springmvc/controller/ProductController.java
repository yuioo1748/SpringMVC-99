package tw.com.ssh.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import tw.com.ssh.springmvc.dao.ProductDao;
import tw.com.ssh.springmvc.entity.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDao productDao;

	// "管理者add proudct"頁面標籤
	@RequestMapping("/add-product")
	public String addProduct_title(Model m) {
		m.addAttribute("title", "Add Product");
		return "add_product";

	}
	
	// "使用者show proudct"頁面標籤
		@RequestMapping("/product")
		public String Product_title(Model m) {
			m.addAttribute("title", "Product");
			
			getProductInfo(m);
			return "product";

		}

	//"管理者show proudct"頁面標籤
	@RequestMapping("/show-product")
	public String showProduct(Model m) {
		m.addAttribute("title", "Show Product");
		
		getProductInfo(m);
		return "show_product";

	}
	// 把productdata 丟到畫面 (alt+shift+m)
	private void getProductInfo(Model m) {
		List<Product> products=productDao.getProducts();
		m.addAttribute("products",products);
	}
	
	//刪除
	@RequestMapping("/delete/{id}")
	public RedirectView deleteProduct(@PathVariable("id")int id,HttpServletRequest request) {
		this.productDao.deleteProduct(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/show-product");// 丟到哪個畫面(目前是先丟給index)
		return redirectView;
		
	}
	//修改
	@RequestMapping("/update/{pId}")
	public String updateForm(@PathVariable("pId")int pid,Model m) {
		Product product=this.productDao.getProduct(pid);
		m.addAttribute("product",product);
		return "update_form";
		
	}
	
	// 新增  透過Class做重定向
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product.toString());
		productDao.createProduct(product);
		// 重定向至頁面
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/show-product");// 丟到哪個畫面(目前是先丟給index)
		return redirectView;

	}
	
	
}
