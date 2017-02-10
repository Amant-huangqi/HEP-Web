package com.hep.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hep.dto.ChangeData;
import com.hep.dto.NannyDetailedShowData;
import com.hep.dto.NursemaidShowData;
import com.hep.model.NursemaidData;
import com.hep.service.NannyService;

@Controller
public class NannyController {

	@Resource
	private NannyService nannyService;

	final Logger logger = LoggerFactory.getLogger(this.getClass());

	/**
	 * 保姆信息展示页面初始化
	 * 
	 * @return
	 */
	@RequestMapping(value = "NannyInformation")
	public ModelAndView nannyInformation() {
		// ModelAndView model = new ModelAndView();

		// List<NursemaidShowData> naayData = nannyService.selectAllNannyData();
		// model.addObject("NaayData", naayData);
		// model.setViewName("NannyInformation");
		return nannyService.selectPageNannyData(null, null);
	}

	/**
	 * 保姆信息展示页面 分页
	 * 
	 * @return
	 */
	@RequestMapping(value = "NannyInformationPage")
	public ModelAndView nannyInformationPage(
			@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize) {
		// ModelAndView model = new ModelAndView();
		return nannyService.selectPageNannyData(pageNum, pageSize);
	}

	/**
	 * 保姆详细信息展示页面初始化
	 * 
	 * @return
	 */
	@RequestMapping(value = "NannyDetailInformation")
	public ModelAndView nannyDetailInformation(String id) {
		ModelAndView model = new ModelAndView();
		int id_char = Integer.parseInt(id);
		NannyDetailedShowData naayData = nannyService
				.nannyDetailInformation(id_char);
		model.addObject("NaayData", naayData);
		model.setViewName("NannyDetailedInformation");
		return model;
	}

	/**
	 * 保姆 信息登记页面初始化
	 * 
	 * @return
	 */
	@RequestMapping(value = "NannyRegistration")
	public String nannyRegistration() {

		return "NannyRegistration";
	}

	/**
	 * 存储 保姆登记信息
	 * 
	 * @param request
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "getNannyRegistrationData")
	public String getNannyRegistrationData(HttpServletRequest request)
			throws UnsupportedEncodingException {

		String name = request.getParameter("name");
		// name = new String(name.getBytes("iso-8859-1"), "UTF-8");

		String image = request.getParameter("image");
		image = URLDecoder.decode(image);

		String photo = request.getParameter("photo");
		photo = URLDecoder.decode(photo);

		String census = request.getParameter("street");
		// census = new String(census.getBytes("iso-8859-1"), "UTF-8");

		String nonResident = request.getParameter("residence");
		// nonResident = new String(nonResident.getBytes("iso-8859-1"),
		// "UTF-8");

		String idnumber = request.getParameter("id_card");
		// idnumber = new String(idnumber.getBytes("iso-8859-1"), "UTF-8");

		String telphone = request.getParameter("phone");
		// telphone = new String(telphone.getBytes("iso-8859-1"), "UTF-8");

		String type = request.getParameter("type");
		// type = new String(type.getBytes("iso-8859-1"), "UTF-8");
		logger.info(type);
		String functions = request.getParameter("skill_id");
		// functions = new String(functions.getBytes("iso-8859-1"), "UTF-8");

		String education = request.getParameter("education");
		// ducation = new String(education.getBytes("iso-8859-1"), "UTF-8");

		String faith = request.getParameter("belief");
		// faith = new String(faith.getBytes("iso-8859-1"), "UTF-8");

		String marriage = request.getParameter("matrimony");
		// marriage = new String(marriage.getBytes("iso-8859-1"), "UTF-8");

		String party = request.getParameter("party");
		// party = new String(party.getBytes("iso-8859-1"), "UTF-8");

		String height = request.getParameter("height");
		// height = new String(height.getBytes("iso-8859-1"), "UTF-8");

		String weight = request.getParameter("weight");
		// weight = new String(weight.getBytes("iso-8859-1"), "UTF-8");
		// logger.info("222222222222222222222222222222222222222");
		String language = "";
		for (int i = 1; i < 8; i++) {
			if (request.getParameter("lang-" + i) != null) {
				language = request.getParameter("lang-" + i) + "/" + language;
			}
		}

		String honor = "";
		for (int i = 1; i < 15; i++) {
			if (request.getParameter("certificate-" + i) != null) {
				honor = request.getParameter("certificate-" + i) + "/" + honor;
			}
		}

		String speciality = "";
		for (int i = 1; i < 15; i++) {
			if (request.getParameter("specialist-" + i) != null) {
				speciality = request.getParameter("specialist-" + i) + "/"
						+ speciality;
			}
		}

		String intention = "";
		for (int i = 1; i < 15; i++) {
			if (request.getParameter("purpose-" + i) != null) {
				intention = request.getParameter("purpose-" + i) + "/"
						+ intention;
			}
		}
		// logger.info("3333333333333333333333333333333");
		String range = request.getParameter("scope");
		// range = new String(range.getBytes("iso-8859-1"), "UTF-8");

		String experience = request.getParameter("experience");
		// experience = new String(experience.getBytes("iso-8859-1"), "UTF-8");

		String wage = request.getParameter("ref_salary");
		// wage = new String(wage.getBytes("iso-8859-1"), "UTF-8");

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
		String time = df.format(new Date());// new Date()为获取当前系统时间

		NursemaidData nursemaidData = new NursemaidData(name, census,
				nonResident, idnumber, telphone, type, functions, education,
				faith, marriage, party, height, weight, language, honor,
				speciality, intention, range, experience, wage, image, photo);

		nursemaidData.setTime(time);
		// String age = NannyController.IdNOToAge(idnumber);
		// nursemaidData.setAge(age);
		nannyService.insertNannyData(nursemaidData);

		return "success";
	}

	/**
	 * 保姆信息展示页面 检索查询
	 * 
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "searchNannyInformation")
	public ModelAndView searchNannyInformation(String job, String skill,
			String age, @RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize)
			throws UnsupportedEncodingException {
		logger.info(job);
		job = new String(job.getBytes("iso-8859-1"), "UTF-8");
		skill = new String(skill.getBytes("iso-8859-1"), "UTF-8");
		age = new String(age.getBytes("iso-8859-1"), "UTF-8");
		// ModelAndView model = new ModelAndView();
		//
		// List<NursemaidShowData> naayData =
		// nannyService.searchNannyInformation(
		// job, skill, age,pageNum,pageSize);
		// model.addObject("NaayData", naayData);
		// model.setViewName("NannyInformation");
		return nannyService.searchNannyInformation(job, skill, age, pageNum,
				pageSize);
		
	}

	/**
	 * 保姆信息展示页面 审核状态修改
	 * 
	 * @param id
	 */
	@RequestMapping(value = "changeNannyInformation")
	public void changeNannyInformation(String id, String struts) {
		int id_char = Integer.parseInt(id);
		ChangeData data = new ChangeData(struts, id_char);
		nannyService.changeNannyInformation(data);
	}

	/**
	 * 保姆信息展示页面 上线状态修改
	 * 
	 * @param id
	 */
	@RequestMapping(value = "onlineNannyInformation")
	public void onlineNannyInformation(String id, String struts) {
		int id_char = Integer.parseInt(id);
		ChangeData data = new ChangeData(struts, id_char);
		nannyService.onlineNannyInformation(data);
	}

	public static String IdNOToAge(String IdNO) {
		int leh = IdNO.length();
		String dates = "";
		if (leh == 18) {
			int se = Integer.valueOf(IdNO.substring(leh - 1)) % 2;
			dates = IdNO.substring(6, 10);
			SimpleDateFormat df = new SimpleDateFormat("yyyy");
			String year = df.format(new Date());
			int u = Integer.parseInt(year) - Integer.parseInt(dates);

			return Integer.toString(u);
		} else {
			dates = IdNO.substring(6, 8);
			return dates;
		}

	}

}
