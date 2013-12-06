package com.agreeya.bd;

import com.agreeya.dao.OnlineTestDao;
import com.agreeya.dto.UserBean;

public class OnlineTestBd {
	OnlineTestDao dao=new OnlineTestDao();
	public void registerUser(UserBean user){
		dao.registerUser(user);
	}
	public boolean adminLogin(UserBean user) {
		return dao.adminLogin(user);
	}

}
