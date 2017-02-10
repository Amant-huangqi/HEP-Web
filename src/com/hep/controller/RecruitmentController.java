package com.hep.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hep.dto.ChangeData;
import com.hep.dto.EmployerShowData;
import com.hep.dto.NursemaidShowData;
import com.hep.model.EmployerData;
import com.hep.service.RecruitmentService;

@Controller
public class RecruitmentController {

	@Resource
	private RecruitmentService recruitmentService;

	@RequestMapping(value = "RecruitmentRelease")
	public String recruitmentRelease() {

		return "RecruitmentRelease";
	}

	@RequestMapping(value = "RecruitmentInformation")
	public ModelAndView recruitmentInformation() {
		// ModelAndView model = new ModelAndView();
		//
		// List<EmployerShowData> naayData =
		// recruitmentService.selectAllRecruitmentData();
		// model.addObject("NaayData", naayData);
		// model.setViewName("RecruitmentInformation");
		return recruitmentService.selectPageRecruitmentData(null, null);
	}

	@RequestMapping(value = "RecruitmentInformationPage")
	public ModelAndView recruitmentInformationPage(
			@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize) {
		// ModelAndView model = new ModelAndView();
		//
		// List<EmployerShowData> naayData =
		// recruitmentService.selectAllRecruitmentData();
		// model.addObject("NaayData", naayData);
		// model.setViewName("RecruitmentInformation");
		return recruitmentService.selectPageRecruitmentData(pageNum, pageSize);
	}

	/**
	 * 招聘详细情况
	 * 
	 * @return
	 */
	@RequestMapping(value = "RecruitmentDetailedInformation")
	public ModelAndView recruitmentDetailedInformation(String id) {
		ModelAndView model = new ModelAndView();
		int id_int = Integer.parseInt(id);
		EmployerShowData naayData = recruitmentService
				.recruitmentDetailedInformation(id_int);
		System.out.print(naayData);
		model.addObject("NaayData", naayData);
		model.setViewName("RecruitmentDetailedInformation");
		return model;
	}

	@RequestMapping(value = "getRecruitmentRelease")
	public String getRecruitmentRelease(HttpServletRequest request)
			throws UnsupportedEncodingException {
		String type = request.getParameter("job_type_id");
		type = new String(type.getBytes("iso-8859-1"), "UTF-8");

		String functions = request.getParameter("skill_id");
		functions = new String(functions.getBytes("iso-8859-1"), "UTF-8");

		String detail = request.getParameter("job_description");
		detail = new String(detail.getBytes("iso-8859-1"), "UTF-8");

		String claim = request.getParameter("demands");
		claim = new String(claim.getBytes("iso-8859-1"), "UTF-8");

		String wage = request.getParameter("salary");
		wage = new String(wage.getBytes("iso-8859-1"), "UTF-8");

		String address = request.getParameter("street");
		address = new String(address.getBytes("iso-8859-1"), "UTF-8");

		String population = request.getParameter("people");
		population = new String(population.getBytes("iso-8859-1"), "UTF-8");

		String area = request.getParameter("area");
		area = new String(area.getBytes("iso-8859-1"), "UTF-8");

		String employer = request.getParameter("name");
		employer = new String(employer.getBytes("iso-8859-1"), "UTF-8");

		String telphone = request.getParameter("phone");
		telphone = new String(telphone.getBytes("iso-8859-1"), "UTF-8");

		String baby1birthday = request.getParameter("child1");
		baby1birthday = new String(baby1birthday.getBytes("iso-8859-1"),
				"UTF-8");

		String baby2birthday = request.getParameter("child2");
		baby2birthday = new String(baby2birthday.getBytes("iso-8859-1"),
				"UTF-8");

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
		String time = df.format(new Date());// new Date()为获取当前系统时间
		EmployerData employerData = new EmployerData(type, functions, detail,
				claim, wage, address, population, area, employer, telphone,
				baby1birthday, baby2birthday);
		employerData.setTime(time);

		recruitmentService.insertEmployerData(employerData);

		return "success";
	}

	/**
	 * 雇主招聘信息展示页面 检索查询
	 * 
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "searchRecruitmentInformation")
	public ModelAndView searchRecruitmentInformation(String job, String skill,
			String salary, @RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize)
			throws UnsupportedEncodingException {
		// logger.info(job);
		ModelAndView model = new ModelAndView();
		job = new String(job.getBytes("GBK"), "UTF-8");
		skill = new String(skill.getBytes("GBK"), "UTF-8");
		salary = new String(salary.getBytes("GBK"), "UTF-8");
		// List<EmployerShowData> naayData = recruitmentService
		// .searchNannyInformation(job, skill, salary);
		// model.addObject("NaayData", naayData);
		// model.setViewName("RecruitmentInformation");
		return recruitmentService.searchNannyInformation(job, skill, salary,
				pageNum, pageSize);
	}

	/**
	 * 招聘信息展示页面 审核状态修改
	 * 
	 * @param id
	 */
	@RequestMapping(value = "changeRecruitmentInformation")
	public void changeRecruitmentInformation(String id, String struts) {
		int id_char = Integer.parseInt(id);
		ChangeData data = new ChangeData(struts, id_char);
		recruitmentService.changeRecruitmentInformation(data);
	}

	/**
	 * 招聘信息展示页面 上线状态修改
	 * 
	 * @param id
	 */
	@RequestMapping(value = "onlineRecruitmentInformation")
	public void onlineRecruitmentInformation(String id, String struts) {
		int id_char = Integer.parseInt(id);
		ChangeData data = new ChangeData(struts, id_char);
		recruitmentService.onlineRecruitmentInformation(data);
	}

}
