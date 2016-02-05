package pass.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sun.research.ws.wadl.Request;

import pass.service.MemberService;
import pass.vo.MemberDto;
import pass.vo.UserDto;
import scala.annotation.meta.param;

@Controller
@RequestMapping("member.go")
public class MemberController {
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;
	
	@RequestMapping(params="loc=register")
	public ModelAndView registerProcess(MemberDto mins,UserDto uins){
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("loc", "main");
		List list = memberService.selectMember();
		int max = list.size();
		if(max==0){
			max =1;
		}else{
			max += 1;
		}
		uins.setId(mins.getMem_id());
		uins.setPassword(mins.getMem_pass());
		uins.setRole("user");
		
		memberService.insertUser(uins);
		memberService.insertMember(mins);
		
		return modelAndView;
	}
	
	@RequestMapping(params="loc=login")
	public ModelAndView loginProcess(){
		ModelAndView modelAndView = new ModelAndView("index");
		
		modelAndView.addObject("loc", "login");
		return modelAndView;
	}
	
	@RequestMapping(params="loc=logout")
	public ModelAndView logutProcess(){
		ModelAndView modelAndView = new ModelAndView("Member/logout");
		return modelAndView;
	}
	
	@RequestMapping(params="loc=loginproc",method=RequestMethod.POST)
	public ModelAndView loginprocProcess(@RequestParam("mem_id") String id){
		ModelAndView modelAndView = new ModelAndView("Member/loginproc");
		modelAndView.addObject("idKey",id );
		return modelAndView;
	}
	

	
	
}
