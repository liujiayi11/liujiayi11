package pojo;

public class Admin {
	private String uname;//�ǳ�
	private byte[] upass;//����
	
	public Admin() {
		super();
	}
	
	public Admin(String uname, byte[] upass) {
		super();
		this.uname = uname;
		this.upass = upass;
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
}
