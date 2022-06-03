package tw.com.ssh.springmvc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import tw.com.ssh.springmvc.entity.UserInfo;

@Component
public class UserInfoDao {

	// interface hh=new xxxclass;
	@Autowired
	private HibernateTemplate hibernateTemplate;

	// 新增
	@Transactional
	public void createUserInfo(UserInfo userInfo) {
		this.hibernateTemplate.saveOrUpdate(userInfo);
	}

	// 取得全部的UserInfo
	@Transactional
	public List<UserInfo> getUserInfos() {
		List<UserInfo> userinfos = this.hibernateTemplate.loadAll(UserInfo.class);
		return userinfos;

	}

	// 刪除
	@Transactional
	public void deleteUserInfo(Integer id) {
		UserInfo u = this.hibernateTemplate.load(UserInfo.class, id);
		this.hibernateTemplate.delete(u);
	}

	// 取得單一個User
	@Transactional
	public UserInfo getUserInfo(Integer id) {
		return this.hibernateTemplate.get(UserInfo.class, id);

	}

//	@SuppressWarnings({ "unchecked", "deprecation" })
//	@Transactional
//	public boolean getUserByEmail(String email, String password) {
//		boolean isValidUser = false;
//		//問老師為hql怎麼寫
//		//String sqlQuery = "from userinfos u where u.email=? and u.password=?;";
//		try {
//			System.out.println("8888888888888");
//			List userObj = (List) hibernateTemplate.find(sqlQuery, email, password);
//			if (userObj != null && userObj.size() > 0) {
//				isValidUser = true;
//			}
//		} catch (Exception e) {
//			System.out.println("FFFFFFFFF");
//			isValidUser = false;
//		}
//		return isValidUser;
//	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	// 用email取得單一個User
	@Transactional
	public boolean getUserInfoByEmail(String email, String password, List<?> list) {
		boolean isValidUser = false;
		String queryString = "select count(*) from chiikawa.userinfos u where u.email=:email and u.password=:password" ; 

        String[] paramName= new String[]{"email", "password"};

        String[] value= new String[]{email, password};

        try {
			list=this.hibernateTemplate.findByNamedParam(queryString, paramName, value);
			if (list != null && list.size() > 0) {
				isValidUser = true;
			}
		} catch (Exception e) {
			isValidUser = false;
		}
		return isValidUser;
//		u.setPassword(password);
//		u.setEmail(email);	
//		int start = 0;
//		int max = 0;
//
//		try {
//			list = this.hibernateTemplate.findByExample(u, start, max);
//			if (list != null && list.size() > 0) {
//				isValidUser = true;
//			}
//		} catch (Exception e) {
//			isValidUser = false;
//		}
//		return isValidUser;

	}
}
