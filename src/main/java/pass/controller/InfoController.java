package pass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("info.go")
public class InfoController {
	//정보공유 게시판
	@RequestMapping(params="loc=share")
	public ModelAndView shareProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "share");
		return modelAndView;
	}
	@RequestMapping(params="loc=sharedetail")
	public ModelAndView shareDetailProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "sharedetail");
		return modelAndView;
	}
	@RequestMapping(params="loc=sharewrite")
	public ModelAndView shareWriteProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "sharewrite");
		return modelAndView;
	}
	//자유게시판
	@RequestMapping(params="loc=free")
	public ModelAndView freeProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "free");
		return modelAndView;
	}
	@RequestMapping(params="loc=freedetail")
	public ModelAndView freeDetailProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "freedetail");
		return modelAndView;
	}
	@RequestMapping(params="loc=freewrite")
	public ModelAndView freeWriteProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "freewrite");
		return modelAndView;
	}
}
