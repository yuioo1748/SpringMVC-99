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

	// "�޲z��add proudct"��������
	@RequestMapping("/add-product")
	public String addProduct_title(Model m) {
		m.addAttribute("title", "Add Product");
		return "add_product";

	}
	
	// "�ϥΪ�show proudct"��������
		@RequestMapping("/product")
		public String Product_title(Model m) {
			m.addAttribute("title", "Product");
			
			getProductInfo(m);
			return "product";

		}

	//"�޲z��show proudct"��������
	@RequestMapping("/show-product")
	public String showProduct(Model m) {
		m.addAttribute("title", "Show Product");
		
		getProductInfo(m);
		return "show_product";

	}
	// ��productdata ���e�� (alt+shift+m)
	private void getProductInfo(Model m) {
		List<Product> products=productDao.getProducts();
		m.addAttribute("products",products);
	}
	
	//�R��
	@RequestMapping("/delete/{id}")
	public RedirectView deleteProduct(@PathVariable("id")int id,HttpServletRequest request) {
		this.productDao.deleteProduct(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/show-product");// �����ӵe��(�ثe�O���ᵹindex)
		return redirectView;
		
	}
	//�ק�
	@RequestMapping("/update/{pId}")
	public String updateForm(@PathVariable("pId")int pid,Model m) {
		Product product=this.productDao.getProduct(pid);
		m.addAttribute("product",product);
		return "update_form";
		
	}
	
	// �s�W  �z�LClass�����w�V
	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product.toString());
		productDao.createProduct(product);
		// ���w�V�ܭ���
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/show-product");// �����ӵe��(�ثe�O���ᵹindex)
		return redirectView;

	}
	
	
}
