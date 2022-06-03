package tw.com.ssh.springmvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import tw.com.ssh.springmvc.dao.UserInfoDao;
import tw.com.ssh.springmvc.entity.Product;
import tw.com.ssh.springmvc.entity.UserInfo;

@Controller
public class UserInfoController {
	
	@Autowired
	private UserInfoDao userInfoDao;
	
	// "���U"��������
	@RequestMapping("/add-userinfo")
	public String addUserInfo(Model m) {
		m.addAttribute("title", "Add UserInfo");
		return "add_userinfo";

	}

	// �s�WUser �z�LClass�����w�V
	@RequestMapping(value = "/handle-userInfo", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute UserInfo userInfo, HttpServletRequest request) {
		userInfoDao.createUserInfo(userInfo);
		// ���w�V�ܭ���
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/login");// �����ӵe��(���U��O���ᵹindex)
		return redirectView;

	}

}
