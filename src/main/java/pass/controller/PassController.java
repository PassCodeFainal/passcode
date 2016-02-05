package pass.controller;

import java.util.List;

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
	 
	@RequestMapping(params="loc=main")
	public ModelAndView mainProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "main");
		return modelAndView;
	}
	@RequestMapping(params="loc=resume",method=RequestMethod.GET)
	public ModelAndView resumeProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		List<ProDto> list = service.selectAllP(); 
		String pno = service.maxPro();
		String eno = service.maxEdu();
		String mno = service.maxMil();
		String awno = service.maxAwa();
		String acno = service.maxAc();
		String ono = service.maxOth();
		String lano = service.maxLang();
		modelAndView.addObject("loc","resume");
		modelAndView.addObject("pno",pno);
		modelAndView.addObject("eno",eno);
		modelAndView.addObject("mno",mno);
		modelAndView.addObject("awno",awno);
		modelAndView.addObject("acno",acno);
		modelAndView.addObject("ono",ono);
		modelAndView.addObject("lano",lano);
		modelAndView.addObject("list", list);
		return modelAndView;
	}
	
	@RequestMapping(params="loc=myac")
	public ModelAndView myacProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "myac");
		return modelAndView;
	}
	@RequestMapping(params="loc=intro")
	public ModelAndView letterProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "intro");
		return modelAndView;
	}
	@RequestMapping(params="loc=re_ins")
	public ModelAndView re_insProcess(ProDto pto, EduDto eins, MilDto mins, LangDto lains){
		ModelAndView modelAndView = new ModelAndView("index");
		service.insertPro(pto);
		if(eins.getEdu_school3().equals("")){
			if(eins.getEdu_school2().equals("")){
				service.insertEdu1(eins);
			}else{
				service.insertEdu1(eins);
				service.insertEdu2(eins);
			}
		}else{
			service.insertEdu1(eins);
			service.insertEdu2(eins);
			service.insertEdu3(eins);
		}
		service.insertMil(mins);
		if(lains.getLang_div3().equals("")){
			if(lains.getLang_div2().equals("")){
				service.insertLang1(lains);
			}else{
				service.insertLang1(lains);
				service.insertLang2(lains);
			}
		}else{
			service.insertLang1(lains);
			service.insertLang2(lains);
			service.insertLang3(lains);
		}
		
	
		
		modelAndView.addObject("loc","main");
		return modelAndView;
	}
	@RequestMapping(params="loc=saveIntro",method=RequestMethod.POST)
	public ModelAndView saveLetterProcess(IntroDto lins){
		ModelAndView modelAndView = new ModelAndView("redirect:index.jsp?loc=intro");
	
		lins.setIntro_no(service.maxIntro());
		service.insertIntro(lins);  
		
		return modelAndView;
	}
	
	
	
	
}
