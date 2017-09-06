package com.lrb.action;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return
	 */
	public String execute() {
		this.clearErrorsAndMessages();
		System.out.println(username);
		System.out.println(password);
		if(username.equals("admin") && password.equals("123"))
		{
			return SUCCESS;
		}
		else
		{
			this.addActionMessage("用户名或者密码错误");
			return this.INPUT;
		}		
	}
}