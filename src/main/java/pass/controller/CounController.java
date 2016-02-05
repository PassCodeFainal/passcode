package pass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("coun.go")
public class CounController {
	//컨설팅 후기
	@RequestMapping(params="loc=afterlist")
	public ModelAndView afterListProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "afterlist");
		return modelAndView;
	}
	@RequestMapping(params="loc=afterdetail")
	public ModelAndView afterDetailProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "afterdetail");
		return modelAndView;
	}
	@RequestMapping(params="loc=afterwrite")
	public ModelAndView afterWriteProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "afterwrite");
		return modelAndView;
	}
	
}
