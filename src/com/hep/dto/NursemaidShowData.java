package com.hep.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NursemaidShowData {
    private int id;//
    
    private String struts;//
    
    private Date inserttime;//

    private String name;//

    private String census;//

    private String nonResident;

    private String idnumber;//

    private String type;//

    private String functions;//

    private String education;

    private String wage;//

    private String age;//
    
    private String telphone;
    
    private String image;
    
    private String online;
    
    

	public String getOnline() {
		return online;
	}

	public void setOnline(String online) {
		this.online = online;
	}

	public String getStruts() {
		return struts;
	}

	public void setStruts(String struts) {
		this.struts = struts;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getAge() {
		//return NursemaidShowData.IdNOToAge(idnumber);
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public Date getInserttime() {
		return inserttime;
	}



	public void setInserttime(Date inserttime) {
		this.inserttime = inserttime;
	}



	public String getAuditstruts() {
		return struts;
	}



	public void setAuditstruts(String auditstruts) {
		this.struts = struts;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getCensus() {
		return census;
	}



	public void setCensus(String census) {
		this.census = census;
	}



	public String getNonResident() {
		return nonResident;
	}



	public void setNonResident(String nonResident) {
		this.nonResident = nonResident;
	}



	public String getIdnumber() {
		return idnumber;
	}



	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
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



	public String getEducation() {
		return education;
	}



	public void setEducation(String education) {
		this.education = education;
	}


	public String getWage() {
		return wage;
	}



	public void setWage(String wage) {
		this.wage = wage;
	}

	
	public static String IdNOToAge(String IdNO){
        int leh = IdNO.length();
        String dates="";
        if (leh == 18) {
            int se = Integer.valueOf(IdNO.substring(leh - 1)) % 2;
            dates = IdNO.substring(6, 10);
            SimpleDateFormat df = new SimpleDateFormat("yyyy");
            String year=df.format(new Date());
            int u=Integer.parseInt(year)-Integer.parseInt(dates);
            
            return Integer.toString(u);
        }else{
            dates = IdNO.substring(6, 8);
            return dates;
        }
        
        

    }
	
	
    
    
}