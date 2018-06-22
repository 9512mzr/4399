package com.JugeDone.JugeDoneController;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.JugeDone.JugeDoneService.JugeDoneService;
import com.entity.CSVUtils;
import com.entity.Judge_question;

@Controller
@RequestMapping("artificial")
public class JugeDoneController {
	@Resource
	@Autowired
	private JugeDoneService jugeDoneService;

	@RequestMapping(value = "/showAll")
	public void jugeDone() {

	}

	@RequestMapping(value = "/showAllDate")
	public String getDates(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {

		String teacherId = (String) request.getSession().getAttribute("teacherId");
		ArrayList<String> dates = this.jugeDoneService.getDates(teacherId);
		request.setAttribute("dates", dates);
		return "selfcenter/NewFile";
	}

	@RequestMapping(value = "/tubiao")
	public String gettubiao(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {
		String teacherId = (String) request.getSession().getAttribute("teacherId");
		String date = request.getParameter("date");
		request.setAttribute("date", date);
		Map<String, Integer> NameAndScore = this.jugeDoneService.getNameAndScore(teacherId, date);
		request.setAttribute("myMap", NameAndScore);
		return "selfcenter/tubiao";
	}

	@RequestMapping(value = "/toExcal")
	public void getexcal(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap)
			throws IOException {
		String address = request.getSession().getServletContext().getRealPath("/");
		System.out.println(address);
		String date = request.getParameter("date");
		String teacherId = (String) request.getSession().getAttribute("teacherId");
		List<Judge_question> Ch = this.jugeDoneService.getChoice(date, teacherId);
		List<Judge_question> Big = this.jugeDoneService.getBig(date, teacherId);
		this.toExcalBQ(address, "BigQuestion", Big);
		this.toExcalBQ(address, "ChoiceQuestion", Ch);
		response.sendRedirect(request.getContextPath()+"/showwlist"); 
	}

	public void toExcalBQ(String url, String name, List<Judge_question> Ju) {
		List<String> dataList=new ArrayList<String>();
		for(int i=0;i<Ju.size();i++) {
			String Info="";
			Integer id=Ju.get(i).getStudent_id();
			Integer Score = Ju.get(i).getScore();
			Integer questionId = Ju.get(i).getQuestion_id();
			Info+=id+","+questionId+","+Score;
			dataList.add(Info);
		}
		CSVUtils.exportCsv(new File(url + "/" + name + ".csv"), dataList);
	}
}
