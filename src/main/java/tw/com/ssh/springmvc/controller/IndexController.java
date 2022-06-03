package tw.com.ssh.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.com.ssh.springmvc.dao.ProductDao;
import tw.com.ssh.springmvc.entity.Product;

@Controller
public class IndexController {

	@Autowired
	private ProductDao productDao;

	// 跳至首頁,把productdata 丟到畫面
	@RequestMapping(value = { "/", "/index" })
	public String home(Model m) {

		getProductInfo(m);
		return "index";

	}

	// alt+shift+m
	private void getProductInfo(Model m) {
		List<Product> product = productDao.getProducts();
		m.addAttribute("product", product);
	}
}