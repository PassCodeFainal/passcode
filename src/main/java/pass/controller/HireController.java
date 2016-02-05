package pass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("hire.go")
public class HireController {
	//나의 스크랩글
	@RequestMapping(params="loc=hireinfo")
	public ModelAndView hireInfoProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "hireinfo");
		return modelAndView;
	}
	@RequestMapping(params="loc=hireinfodetail")
	public ModelAndView shareProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "hireinfodetail");
		return modelAndView;
	}

}
