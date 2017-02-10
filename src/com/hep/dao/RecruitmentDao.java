package com.hep.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hep.dto.ChangeData;
import com.hep.dto.EmployerShowData;
import com.hep.model.EmployerData;

@Repository
public interface RecruitmentDao {

	void insertEmployerData(EmployerData employerData);

	List<EmployerShowData> selectAllRecruitmentData();

	/**
	 * 雇主招聘信息展示页面 检索查询
	 * 
	 * @return
	 */
	List<EmployerShowData> searchNannyInformation(@Param("job") String job,
			@Param("skill") String skill, @Param("wage_on") String wage_on,
			@Param("wage_up") String wage_up, @Param("wage") String wage);

	/**
	 * 招聘详细情况
	 * 
	 * @return
	 */
	EmployerShowData recruitmentDetailedInformation(int id);

	/**
	 * 招聘信息展示页面 审核状态修改
	 * 
	 * @param struts
	 * @param id
	 */
	void changeRecruitmentInformation(ChangeData data);

	void onlineRecruitmentInformation(ChangeData data);

	List<EmployerShowData> selectAllRecruitmentDataLimit(
			@Param("online") String online, @Param("struts") String struts);

	List<EmployerShowData> searchNannyInformationLimit(@Param("job")String job,
			@Param("skill")String skill, @Param("wage_on")String wage_on, @Param("wage_up")String wage_up, @Param("wage")String wage,
			@Param("online")String online, @Param("struts")String struts);

}
