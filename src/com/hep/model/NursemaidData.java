package com.hep.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NursemaidData {
    private int id;
    
    private String auditstruts;
    
    private Date inserttime;

    private String name;

    private String census;

    private String nonResident;

    private String idnumber;

    private String telphone;

    private String type;

    private String functions;

    private String education;

    private String faith;

    private String marriage;

    private String 	party;

    private String height;

    private String weight;

    private String language;

    private String honor;

    private String speciality;

    private String intention;

    private String range;

    private String experience;

    private String wage;

    private String age;
    
    private String image;
    
    private String photo;
    
    private String time;
    
    

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAge() {
		return NursemaidData.IdNOToAge(idnumber);
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
		return auditstruts;
	}



	public void setAuditstruts(String auditstruts) {
		this.auditstruts = auditstruts;
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



	public String getTelphone() {
		return telphone;
	}



	public void setTelphone(String telphone) {
		this.telphone = telphone;
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



	public String getFaith() {
		return faith;
	}



	public void setFaith(String faith) {
		this.faith = faith;
	}



	public String getMarriage() {
		return marriage;
	}



	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}



	public String getParty() {
		return party;
	}



	public void setParty(String party) {
		this.party = party;
	}



	public String getHeight() {
		return height;
	}



	public void setHeight(String height) {
		this.height = height;
	}



	public String getWeight() {
		return weight;
	}



	public void setWeight(String weight) {
		this.weight = weight;
	}



	public String getLanguage() {
		return language;
	}



	public void setLanguage(String language) {
		this.language = language;
	}



	public String getHonor() {
		return honor;
	}



	public void setHonor(String honor) {
		this.honor = honor;
	}



	public String getSpeciality() {
		return speciality;
	}



	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}



	public String getIntention() {
		return intention;
	}



	public void setIntention(String intention) {
		this.intention = intention;
	}



	public String getRange() {
		return range;
	}



	public void setRange(String range) {
		this.range = range;
	}



	public String getExperience() {
		return experience;
	}



	public void setExperience(String experience) {
		this.experience = experience;
	}



	public String getWage() {
		return wage;
	}



	public void setWage(String wage) {
		this.wage = wage;
	}



	
	
	public NursemaidData(String name, String census, String nonResident,
			String idnumber, String telphone, String type, String functions,
			String education, String faith, String marriage, String party,
			String height, String weight, String language, String honor,
			String speciality, String intention, String range,
			String experience, String wage,String image,
			String photo) {
		super();
		this.name = name;
		this.census = census;
		this.nonResident = nonResident;
		this.idnumber = idnumber;
		this.telphone = telphone;
		this.type = type;
		this.functions = functions;
		this.education = education;
		this.faith = faith;
		this.marriage = marriage;
		this.party = party;
		this.height = height;
		this.weight = weight;
		this.language = language;
		this.honor = honor;
		this.speciality = speciality;
		this.intention = intention;
		this.range = range;
		this.experience = experience;
		this.wage = wage;
		
		this.image = image;
		this.photo = photo;
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