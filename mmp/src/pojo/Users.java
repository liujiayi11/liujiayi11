package pojo;

import java.io.Serializable;

public class Users implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;	
	private String uname;//昵称
	private byte[] upass;//密码
	private String sex;//性别
	private String tel;//电话
	private String headimage;//头像
	private String cart;
	
	public Users() {
	}

	@Override
	public String toString() {
		return "Users [  uname=" + uname + ", upass=" + upass + ", sex=" + sex + ", tel=" + tel
				+ ", headimage=" + headimage + ", cart=" + cart + "]";
	}

	public Users(String uname, byte[] upass, String sex, String tel, String headimage, String cart) {
	
		this.uname = uname;
		this.upass = upass;
		this.sex = sex;
		this.tel = tel;
		this.headimage = headimage;
		this.cart = cart;
	}



	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public byte[] getUpass() {
		return upass;
	}

	public void setUpass(byte[] upass) {
		this.upass = upass;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getHeadimage() {
		return headimage;
	}

	public void setHeadimage(String headimage) {
		this.headimage = headimage;
	}

	public String getCart() {
		return cart;
	}

	public void setCart(String cart) {
		this.cart = cart;
	}
}
