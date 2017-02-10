package com.hep.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hep.dao.RecruitmentDao;
import com.hep.dto.ChangeData;
import com.hep.dto.EmployerShowData;
import com.hep.dto.NursemaidShowData;
import com.hep.model.EmployerData;

@Service
public class RecruitmentService {

	@Resource
	private RecruitmentDao recruitmentDao;

	public void insertEmployerData(EmployerData employerData) {
		// TODO Auto-generated method stub
		recruitmentDao.insertEmployerData(employerData);
	}

	public List<EmployerShowData> selectAllRecruitmentData() {
		// TODO Auto-generated method stub
		List<EmployerShowData> naayData = recruitmentDao
				.selectAllRecruitmentData();
		return naayData;
	}

	/**
	 * 信息展示页面分页
	 * 
	 * @return
	 */
	public ModelAndView selectPageRecruitmentData(String pageNum,
			String pageSize) {
		// TODO Auto-generated method stub
		int num = 1;
		int size = 7;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}
		Subject subject = SecurityUtils.getSubject();
		if (subject.isAuthenticated()) {
			PageHelper.startPage(num, size);
			List<EmployerShowData> list = recruitmentDao
					.selectAllRecruitmentData();
			// 用PageInfo对结果进行包装
			PageInfo<EmployerShowData> page = new PageInfo<EmployerShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("RecruitmentInformation");
			return model;
		} else {
			PageHelper.startPage(num, size);
			List<EmployerShowData> list = recruitmentDao
					.selectAllRecruitmentDataLimit("1", "1");
			// 用PageInfo对结果进行包装
			PageInfo<EmployerShowData> page = new PageInfo<EmployerShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("RecruitmentInformation");
			return model;
		}

	}

	/**
	 * 保姆信息展示页面 检索查询
	 * 
	 * @param job
	 * @param skill
	 * @param salary
	 * @param pageSize
	 * @param pageNum
	 * @return
	 */
	public ModelAndView searchNannyInformation(String job, String skill,
			String salary, String pageNum, String pageSize) {
		// TODO Auto-generated method stub
		String wage_on = "";
		String wage_up = "";
		String wage = "";

		if (skill != null) {
			switch (skill) {
			case "1":
				skill = "育儿兼家务";
				break;
			case "2":
				skill = "一般家务";

				break;
			case "3":
				skill = "育儿嫂";

				break;
			case "4":
				skill = "照顾老人";

				break;
			case "5":
				skill = "病人陪护";

				break;
			case "6":
				skill = "别墅高端家务";

				break;
			case "7":
				skill = "公司烧饭";

				break;
			case "8":
				skill = "涉外家政";

				break;
			case "9":
				skill = "母婴护理";

				break;

			default:
				break;
			}
		}

		if (job != null) {
			switch (job) {
			case "1":
				job = "住家保姆";
				break;
			case "2":
				job = "不住家保姆";

				break;
			case "3":
				job = "上午半天";

				break;
			case "4":
				job = "下午半天";

				break;
			case "5":
				job = "月嫂";

				break;

			case "7":
				job = "高端保姆";

				break;

			default:
				break;
			}
		}

		switch (salary) {
		case "discuss":
			wage = "面议";

			break;
		case "fixed":
			wage = "指导价";

			break;
		case "lt2000":
			wage_up = "0";
			wage_on = "2000";

			break;
		case "2000":
			wage_up = "2000";
			wage_on = "2900";
			break;
		case "3000":
			wage_up = "3000";
			wage_on = "3900";
			break;
		case "4000":
			wage_up = "4000";
			wage_on = "4900";
			break;
		case "gt5000":
			wage_up = "5000";
			wage_on = "";
			break;
		default:
			break;
		}

		int num = 1;
		int size = 7;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}
		Subject subject = SecurityUtils.getSubject();
		if (subject.isAuthenticated()) {
			PageHelper.startPage(num, size);
			List<EmployerShowData> list = recruitmentDao
					.searchNannyInformation(job, skill, wage_on, wage_up, wage);
			// 用PageInfo对结果进行包装
			PageInfo<EmployerShowData> page = new PageInfo<EmployerShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("RecruitmentInformation");
			return model;
		} else {
			PageHelper.startPage(num, size);
			List<EmployerShowData> list = recruitmentDao
					.searchNannyInformationLimit(job, skill, wage_on, wage_up, wage,"1", "1");
			// 用PageInfo对结果进行包装
			PageInfo<EmployerShowData> page = new PageInfo<EmployerShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("RecruitmentInformation");
			return model;
		}

		// List<EmployerShowData> naayData = recruitmentDao
		// .searchNannyInformation(job, skill, wage_on, wage_up, wage);
		// return naayData;
	}

	/**
	 * 招聘详细情况
	 * 
	 * @return
	 */
	public EmployerShowData recruitmentDetailedInformation(int id) {
		// TODO Auto-generated method stub
		EmployerShowData naayData = recruitmentDao
				.recruitmentDetailedInformation(id);
		return naayData;
	}

	/**
	 * 招聘信息展示页面 审核状态修改
	 * 
	 * @param struts
	 * @param id
	 */
	public void changeRecruitmentInformation(ChangeData data) {
		// TODO Auto-generated method stub
		recruitmentDao.changeRecruitmentInformation(data);
	}

	public void onlineRecruitmentInformation(ChangeData data) {
		// TODO Auto-generated method stub
		recruitmentDao.onlineRecruitmentInformation(data);
	}

}
