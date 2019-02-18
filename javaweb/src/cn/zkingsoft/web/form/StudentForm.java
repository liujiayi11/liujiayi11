package cn.zkingsoft.web.form;

import cn.zkingsoft.web.core.ActionForm;

public class StudentForm extends ActionForm{
	private String data;
	private String sid;

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
}
