package com.hep.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hep.dao.NannyDao;
import com.hep.dto.ChangeData;
import com.hep.dto.NannyDetailedShowData;
import com.hep.dto.NursemaidShowData;
import com.hep.model.NursemaidData;

@Service
public class NannyService {

	@Resource
	private NannyDao nannyDao;

	public void insertNannyData(NursemaidData nursemaidData) {
		// TODO Auto-generated method stub
		System.out.print(nursemaidData.getType());
		nannyDao.insert(nursemaidData);
	}

	public List<NursemaidShowData> selectAllNannyData() {
		// TODO Auto-generated method stub
		List<NursemaidShowData> naayData = nannyDao.selectAllNannyData();
		return naayData;
	}

	/**
	 * 信息展示页面分页
	 * 
	 * @return
	 */
	public ModelAndView selectPageNannyData(String pageNum, String pageSize) {
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
			List<NursemaidShowData> list = nannyDao.selectAllNannyData();
			// 用PageInfo对结果进行包装
			PageInfo<NursemaidShowData> page = new PageInfo<NursemaidShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("NannyInformation");
			return model;
		} else {
			PageHelper.startPage(num, size);
			List<NursemaidShowData> list = nannyDao.selectAllNannyDataLimit(
					"1", "1");
			// 用PageInfo对结果进行包装
			PageInfo<NursemaidShowData> page = new PageInfo<NursemaidShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("NannyInformation");
			return model;
		}

	}

	/**
	 * 保姆信息展示页面 检索查询
	 * 
	 * @param pageSize
	 * @param pageNum
	 * 
	 * @return
	 */

	public ModelAndView searchNannyInformation(String job, String skill,
			String age, String pageNum, String pageSize) {
		// TODO Auto-generated method stub
		String age_on = "";
		String age_up = "";
		if (age != null) {

			switch (age) {
			case "19":
				age_on = "20";
				break;
			case "20":
				age_on = "29";
				age_up = "20";
				break;
			case "30":
				age_on = "39";
				age_up = "30";

				break;
			case "40":
				age_on = "49";
				age_up = "40";

				break;
			case "50":
				age_on = "59";
				age_up = "50";

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
			case "6":
				job = "钟点工";

				break;
			case "7":
				job = "高端保姆";

				break;
			case "9":
				job = "差评保姆";

				break;
			case "11":
				job = "周六周日";

				break;

			default:
				break;
			}
		}

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
			List<NursemaidShowData> list = nannyDao.searchNannyInformation(job,
					skill, age_on, age_up);
			// 用PageInfo对结果进行包装
			PageInfo<NursemaidShowData> page = new PageInfo<NursemaidShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("NannyInformation");
			return model;
		} else {
			PageHelper.startPage(num, size);
			List<NursemaidShowData> list = nannyDao
					.searchNannyInformationLimit(job, skill, age_on, age_up,
							"1", "1");
			// 用PageInfo对结果进行包装
			PageInfo<NursemaidShowData> page = new PageInfo<NursemaidShowData>(
					list);
			ModelAndView model = new ModelAndView();
			model.addObject("pagehelper", page);
			model.setViewName("NannyInformation");
			return model;
		}

//		List<NursemaidShowData> naayData = nannyDao.searchNannyInformation(job,
//				skill, age_on, age_up);
//		return naayData;
	}

	/**
	 * 保姆详细信息展示页面初始化
	 * 
	 * @return
	 */
	public NannyDetailedShowData nannyDetailInformation(int id) {
		// TODO Auto-generated method stub
		NannyDetailedShowData naayData = nannyDao.nannyDetailInformation(id);
		return naayData;
	}

	/**
	 * 保姆信息展示页面 审核状态修改
	 * 
	 * @param struts
	 * @param id
	 */
	public void changeNannyInformation(ChangeData data) {
		// TODO Auto-generated method stub
		nannyDao.changeNannyInformation(data);
	}

	public void onlineNannyInformation(ChangeData data) {
		// TODO Auto-generated method stub
		nannyDao.onlineNannyInformation(data);
	}

}
