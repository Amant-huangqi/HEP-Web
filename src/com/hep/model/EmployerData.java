package com.hep.model;

public class EmployerData {
    private Integer id;

    private String type;

    private String functions;

    private String detail;

    private String claim;

    private String wage;

    private String address;

    private String population;

    private String area;

    private String employer;

    private String telphone;

    private String baby1birthday;

    private String baby2birthday;
    
    private String time;
    
    

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFunctions() {
		return functions;
	}

	public void setFunctions(String functions) {
		this.functions = functions;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getClaim() {
		return claim;
	}

	public void setClaim(String claim) {
		this.claim = claim;
	}

	public String getWage() {
		return wage;
	}

	public void setWage(String wage) {
		this.wage = wage;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPopulation() {
		return population;
	}

	public void setPopulation(String population) {
		this.population = population;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getEmployer() {
		return employer;
	}

	public void setEmployer(String employer) {
		this.employer = employer;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getBaby1birthday() {
		return baby1birthday;
	}

	public void setBaby1birthday(String baby1birthday) {
		this.baby1birthday = baby1birthday;
	}

	public String getBaby2birthday() {
		return baby2birthday;
	}

	public void setBaby2birthday(String baby2birthday) {
		this.baby2birthday = baby2birthday;
	}

	public EmployerData(String type, String functions, String detail,
			String claim, String wage, String address, String population,
			String area, String employer, String telphone,
			String baby1birthday, String baby2birthday) {
		super();
		this.type = type;
		this.functions = functions;
		this.detail = detail;
		this.claim = claim;
		this.wage = wage;
		this.address = address;
		this.population = population;
		this.area = area;
		this.employer = employer;
		this.telphone = telphone;
		this.baby1birthday = baby1birthday;
		this.baby2birthday = baby2birthday;
	}

    
}