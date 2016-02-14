package pass.controller;

import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pass.service.PassService;
import pass.vo.EduDto;
import pass.vo.LangDto;
import pass.vo.IntroDto;
import pass.vo.MilDto;
import pass.vo.ProDto;

@Controller
@RequestMapping("pass.go")
public class PassController {
	@Autowired
	@Qualifier("passService")
	private PassService service;
	@RequestMapping(params = "loc=main")
	public ModelAndView mainProcess() {
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "main");
		return modelAndView;
	}
	@RequestMapping(params = "loc=resume")
	public ModelAndView resumeProcess() {
		ModelAndView modelAndView = new ModelAndView("MyDocument/resume");
		modelAndView.addObject("loc_save","MyDocument/resume");
		return modelAndView;
	}
	@RequestMapping(params = "loc=myac")
	public ModelAndView myacProcess() {
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "myac");
		return modelAndView;
	}
	@RequestMapping(value ="loc=intro")
	public ModelAndView letterProcess() {
		ModelAndView modelAndView = new ModelAndView("MyDocument/introdution");
		modelAndView.addObject("loc_save", "MyDocument/introdution");
		return modelAndView;
	}
	@RequestMapping(params ="loc=intro")
	public ModelAndView introProcess() {
		ModelAndView modelAndView = new ModelAndView("MyDocument/introdution");
		modelAndView.addObject("loc_save", "MyDocument/introdution");
		return modelAndView;
	}
	@RequestMapping(params = "loc=re_ins")
	public ModelAndView re_insProcess(ProDto pins, EduDto eins, MilDto mins, LangDto lins, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("MyDocument/resume");
		//profile 등록
		String pro_update =request.getParameter("pro_update");
		if(pro_update.equals("n")){
			String pins_no = service.maxPro();
			pins.setPro_no(pins_no);
			service.insertPro(pins);
		}else{
			service.updatePro(pins);
		}
		//education 등록 및 수정
		String[] edu_school = request.getParameterValues("edu_school");
		String[] edu_major = request.getParameterValues("edu_major");
		String[] edu_submajor = request.getParameterValues("edu_submajor");
		String[] edu_grade = request.getParameterValues("edu_grade");
		String[] edu_sdate = request.getParameterValues("edu_sdate");
		String[] edu_edate = request.getParameterValues("edu_edate");
		String[] edu_no = request.getParameterValues("edu_no");
		String edu_update = request.getParameter("edu_update");
		
		//language 등록 및 수정
		String[] lang_div = request.getParameterValues("lang_div");
		String[] lang_title = request.getParameterValues("lang_title");
		String[] lang_class = request.getParameterValues("lang_class");
		String[] lang_institute = request.getParameterValues("lang_institute");
		String[] lang_sdate = request.getParameterValues("lang_sdate");
		String[] lang_edate = request.getParameterValues("lang_edate");
		String[] lang_no = request.getParameterValues("lang_no");
		String lang_update = request.getParameter("lang_update");
		
		if (edu_update.equals("n")) {
			int edu_noMax = Integer.parseInt(service.maxEdu());
			for (int i = 0; i < edu_school.length; i++) {
				StringTokenizer token_edu_school = new StringTokenizer(edu_school[i], ",");
				StringTokenizer token_edu_major = new StringTokenizer(edu_major[i], ",");
				StringTokenizer token_edu_submajor = new StringTokenizer(edu_submajor[i], ",");
				StringTokenizer token_edu_grade = new StringTokenizer(edu_grade[i], ",");
				StringTokenizer token_edu_sdate = new StringTokenizer(edu_sdate[i], ",");
				StringTokenizer token_edu_edate = new StringTokenizer(edu_edate[i], ",");
				String db_edu_school = token_edu_school.nextToken();
				String db_edu_major = token_edu_major.nextToken();
				String db_edu_submajor = token_edu_submajor.nextToken();
				String db_edu_grade = token_edu_grade.nextToken();
				String db_edu_sdate = token_edu_sdate.nextToken();
				String db_edu_edate = token_edu_edate.nextToken();
				eins.setDb_edu_no(Integer.toString(edu_noMax));
				eins.setDb_edu_school(db_edu_school);
				eins.setDb_edu_major(db_edu_major);
				eins.setDb_edu_submajor(db_edu_submajor);
				eins.setDb_edu_grade(db_edu_grade);
				eins.setDb_edu_sdate(db_edu_sdate);
				eins.setDb_edu_edate(db_edu_edate);
				service.insertEdu(eins);
				edu_noMax++;
			}
		} else {
			for (int i = 0; i < edu_school.length; i++) {
				StringTokenizer token_edu_school = new StringTokenizer(edu_school[i], ",");
				StringTokenizer token_edu_major = new StringTokenizer(edu_major[i], ",");
				StringTokenizer token_edu_submajor = new StringTokenizer(edu_submajor[i], ",");
				StringTokenizer token_edu_grade = new StringTokenizer(edu_grade[i], ",");
				StringTokenizer token_edu_sdate = new StringTokenizer(edu_sdate[i], ",");
				StringTokenizer token_edu_edate = new StringTokenizer(edu_edate[i], ",");
				StringTokenizer token_edu_no = new StringTokenizer(edu_no[i], ",");
				String db_edu_school = token_edu_school.nextToken();
				String db_edu_major = token_edu_major.nextToken();
				String db_edu_submajor = token_edu_submajor.nextToken();
				String db_edu_grade = token_edu_grade.nextToken();
				String db_edu_sdate = token_edu_sdate.nextToken();
				String db_edu_edate = token_edu_edate.nextToken();
				String db_edu_no = token_edu_no.nextToken();
				eins.setDb_edu_no(db_edu_no);
				eins.setDb_edu_school(db_edu_school);
				eins.setDb_edu_major(db_edu_major);
				eins.setDb_edu_submajor(db_edu_submajor);
				eins.setDb_edu_grade(db_edu_grade);
				eins.setDb_edu_sdate(db_edu_sdate);
				eins.setDb_edu_edate(db_edu_edate);
				service.updateEdu(eins);
			}
			
		}
		//military 등록 및 수정
		String mil_update = request.getParameter("mil_update");
		if(mil_update.equals("n")){
			String mil_no = service.maxMil();
			mins.setMil_no(mil_no);
			service.insertMil(mins);
		}else{
			service.updateMil(mins);
		}
		
		//language 등록 및 수정
		for (int i = 0; i < edu_school.length; i++) {
		StringTokenizer token_lang_div = new StringTokenizer(lang_div[i], ",");
		StringTokenizer token_lang_title = new StringTokenizer(lang_title[i], ",");
		StringTokenizer token_lang_class = new StringTokenizer(lang_class[i], ",");
		StringTokenizer token_lang_institute = new StringTokenizer(lang_institute[i], ",");
		StringTokenizer token_lang_sdate = new StringTokenizer(lang_sdate[i], ",");
		StringTokenizer token_lang_edate = new StringTokenizer(lang_edate[i], ",");
		StringTokenizer token_lang_no = new StringTokenizer(lang_no[i], ",");
		String db_lang_div = token_lang_div.nextToken();
		String db_lang_title = token_lang_title.nextToken();
		String db_lang_class = token_lang_class.nextToken();
		String db_lang_institute = token_lang_institute.nextToken();
		String db_lang_sdate = token_lang_sdate.nextToken();
		String db_lang_edate = token_lang_edate.nextToken();
		String db_lang_no = token_lang_no.nextToken();
		lins.setDb_lang_no(db_lang_no);
		lins.setDb_lang_div(db_lang_div);
		lins.setDb_lang_title(db_lang_title);
		lins.setDb_lang_class(db_lang_class);
		lins.setDb_lang_institute(db_lang_institute);
		lins.setDb_lang_sdate(db_lang_sdate);
		lins.setDb_lang_edate(db_lang_edate);
		service.insertLang(lins);
		}
		
		modelAndView.addObject("loc_save", "MyDocument/resume");
		return modelAndView;
	}
	@RequestMapping(params = "loc=saveIntro", method = RequestMethod.POST)
	public ModelAndView saveIntroProcess(IntroDto lins, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView(request.getParameter("loc_save"));
		if (request.getParameter("update").equals("y")) {
			String up_no = request.getParameter("update_no");
			lins.setIntro_no(up_no);
			service.updateIntro(lins);
		} else {
			lins.setIntro_no(service.maxIntro());
			service.insertIntro(lins);
		}
		return modelAndView;
	}
	@RequestMapping(params = "loc=loadIntro")
	public ModelAndView loadIntroProcess(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("MyDocument/introduction_load");
		List list = service.selectAllIntro((String)session.getAttribute("idKey"));
		modelAndView.addObject("intro", list);
		return modelAndView;
	}
	@RequestMapping(params = "loc=loadPro")
	public ModelAndView loadProProcess(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("MyDocument/pro_load");
		List list = service.selectAllPro((String)session.getAttribute("idKey"));
		modelAndView.addObject("pro", list);
		return modelAndView;
	}
	@RequestMapping(params = "loc=loadEdu")
	public ModelAndView loadEduProcess(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("MyDocument/edu_load");
		List list = service.selectAlledu((String)session.getAttribute("idKey"));
		modelAndView.addObject("edu", list);
		return modelAndView;
	}
	@RequestMapping(params = "loc=loadMil")
	public ModelAndView loadMilProcess(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("MyDocument/mil_load");
		List list = service.selectAllmil((String)session.getAttribute("idKey"));
		modelAndView.addObject("mil", list);
		return modelAndView;
	}

}
