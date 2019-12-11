package actions;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;


public class RegisterAction extends ActionSupport {
	public String name;
	public Date birthday;
	public Double height;
	public String sex;
	public String hobby;
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Date getBirthday() {
		return birthday;
	}



	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}



	



	public Double getHeight() {
		return height;
	}



	public void setHeight(Double height) {
		this.height = height;
	}



	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}



	public String getHobby() {
		return hobby;
	}



	public void setHobby(String hobby) {
		this.hobby = hobby;
	}



}
