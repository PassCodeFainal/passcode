package pass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("mypage.go")
public class MyPageController {
	//나의 스크랩글
	@RequestMapping(params="loc=scrape")
	public ModelAndView shareProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "scrape");
		return modelAndView;
	}
	//나의 게시글
	@RequestMapping(params="loc=mywrite")
	public ModelAndView myWriteProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "mywrite");
		return modelAndView;
	}
	@RequestMapping(params="loc=writedetail")
	public ModelAndView myWriteDetailProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "myWriteDetail");
		return modelAndView;
	}
	@RequestMapping(params="loc=newwrite")
	public ModelAndView myNewWriteProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "myNewWrite");
		return modelAndView;
	}
	@RequestMapping(params="loc=writeup")
	public ModelAndView myWriteUpProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "myWriteUp");
		return modelAndView;
	}
	//나의 상담이력
	@RequestMapping(params="loc=mycoun")
	public ModelAndView myCounUpProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "mycoun");
		return modelAndView;
	}
	

	
}
