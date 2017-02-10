package com.hep.dao;

import com.hep.dto.ChangeData;
import com.hep.dto.NannyDetailedShowData;
import com.hep.dto.NursemaidShowData;
import com.hep.model.NursemaidData;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface NannyDao {

	int deleteByPrimaryKey(Integer id);

	int insert(NursemaidData record);

	int insertSelective(NursemaidData record);

	NursemaidData selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(NursemaidData record);

	int updateByPrimaryKey(NursemaidData record);

	List<NursemaidShowData> selectAllNannyData();

	/**
	 * 保姆信息展示页面 检索查询
	 * 
	 * @param job
	 * @param skill
	 * @param age
	 * @return
	 */
	List<NursemaidShowData> searchNannyInformation(@Param("job") String job,
			@Param("skill") String skill, @Param("age_on") String age_on,
			@Param("age_up") String age_up);

	/**
	 * 保姆详细信息展示页面初始化
	 * 
	 * @return
	 */
	NannyDetailedShowData nannyDetailInformation(int id);

	/**
	 * 保姆信息展示页面 审核状态修改
	 * 
	 * @param struts
	 * @param id
	 * @return
	 */
	void changeNannyInformation(ChangeData data);

	void onlineNannyInformation(ChangeData data);

	List<NursemaidShowData> selectAllNannyDataLimit(
			@Param("online") String online, @Param("struts") String struts);

	List<NursemaidShowData> searchNannyInformationLimit(
			@Param("job") String job, @Param("skill") String skill,
			@Param("age_on") String age_on, @Param("age_up") String age_up,
			@Param("online") String online, @Param("struts") String struts);
}