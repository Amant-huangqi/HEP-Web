package com.hep.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NannyDetailedShowData {
	
	int id;
	String struts;
	String nonresident;
	String name;
	String census;
	String type;
	String functions;
	String education;
    String faith;
    String height;
    String weight;
    String language;
    String honor;
    String speciality;
    String intention;
    String experience;
    String wage;
    String matr;
    String partya;
    String scope;
    Date inserttime;
    String image;
    String photo;
    String age;
    String idnumber;//
    
    
    
    public String getStruts() {
		return struts;
	}

	public void setStruts(String struts) {
		this.struts = struts;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getAge() {
		return NursemaidShowData.IdNOToAge(idnumber);
	}

	public void setAge(String age) {
		this.age = age;
	}
    
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuditstruts() {
		return struts;
	}
	public void setAuditstruts(String struts) {
		this.struts = struts;
	}
	public String getNonresident() {
		return nonresident;
	}
	public void setNonresident(String nonresident) {
		this.nonresident = nonresident;
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
	public String getMatr() {
		return matr;
	}
	public void setMatr(String matr) {
		this.matr = matr;
	}
	public String getPartya() {
		return partya;
	}
	public void setPartya(String partya) {
		this.partya = partya;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public Date getInserttime() {
		return inserttime;
	}
	public void setInserttime(Date inserttime) {
		this.inserttime = inserttime;
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
