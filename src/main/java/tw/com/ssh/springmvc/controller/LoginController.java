package tw.com.ssh.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tw.com.ssh.springmvc.dao.UserInfoDao;
import tw.com.ssh.springmvc.entity.Product;
import tw.com.ssh.springmvc.entity.UserInfo;

@Controller
public class LoginController {
	@Autowired
	private UserInfoDao userInfoDao;

	// "登入"頁面標籤
	@RequestMapping("/login")
	public String logintitle(Model m) {
		m.addAttribute("title", "login");

		return "login";

	}

//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public ModelAndView login(@RequestParam("email") String email, @RequestParam("password") String password) {
//		String msg = "";
//		boolean isValid = userInfoDao.getUserByEmail(email, password);
//		if (isValid) {
//			msg = "Welcome " + email + "!";
//		} else {
//			msg = "Invalid credentials";
//		}
//
//		return new ModelAndView("index", "output", msg);
//	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView doLogin(@ModelAttribute List<UserInfo> list,@RequestParam("email") String email, @RequestParam("password") String password) {
		System.out.println(email.toString());
		System.out.println(password.toString());
		String msg = "";
		boolean isValid=this.userInfoDao.getUserInfoByEmail(password, email, list);
		if (isValid) {
			System.out.println("777777777");
			msg = "Welcome " + email + "!";
		} else {
			System.out.println("00000000");
			msg = "登入失敗";
		}
		return new ModelAndView("index", "output", msg);
		
	}
}
