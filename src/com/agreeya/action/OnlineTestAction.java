package com.agreeya.action;

import com.agreeya.bd.OnlineTestBd;
import com.agreeya.dto.UserBean;
import com.opensymphony.xwork2.ActionSupport;

public class OnlineTestAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7998345934859334318L;
	private UserBean user;
	public UserBean getUser() {
		return user;
	}
	public void setUser(UserBean user) {
		this.user = user;
	}
	OnlineTestBd bd=new OnlineTestBd();
	
	public String registerUser(){
		
		bd.registerUser(getUser());
		return SUCCESS;	
	}
	public String adminLogin(){
		try {
			if(bd.adminLogin(getUser()) && getUser().getUsername()!= null && getUser().getPassword()!=null){   
			return SUCCESS;
			}
			else
			{
				addActionMessage(getText("login.failed"));
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;
	}
	
}
