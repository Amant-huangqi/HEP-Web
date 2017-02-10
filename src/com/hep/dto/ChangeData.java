package com.hep.dto;

public class ChangeData {
	
	String struts;
	int id;
	public String getStruts() {
		return struts;
	}
	public void setStruts(String struts) {
		this.struts = struts;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public ChangeData(String struts, int id) {
		super();
		this.struts = struts;
		this.id = id;
	}
	
	

}
