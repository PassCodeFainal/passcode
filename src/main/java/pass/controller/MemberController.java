package pass.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pass.service.MemberService;
import pass.vo.MemberDto;
import pass.vo.UserDto;
import scala.unchecked;
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

		uins.setId(mins.getMem_id());
		uins.setPassword(mins.getMem_pass());
		uins.setRole("user");
		memberService.insertUser(uins);
		mins.setMem_no(memberService.maxMember());
		memberService.insertMember(mins);
		
		return modelAndView;
	}
	
	//회원가입 창 아이디 체크 
	@RequestMapping(params="loc=idcheck")
	@ResponseBody
	public Map<String, String> idCheck(@RequestParam("mem_id") String id){
		   Map<String, String> returnedData = new HashMap<String, String>();
		  /* List<MemberDto> more =  memberService.selectMember();*/
		   String dd = memberService.idCheck(id);
		   returnedData.put("more", dd);
		   return returnedData;
		}
	//회원가입 창 닉네임 체크
	@RequestMapping(params="loc=nicknamecheck")
	@ResponseBody
	public Map<String, String> nickname(@RequestParam("mem_nickname") String nickname){
		   Map<String, String> returnedData = new HashMap<String, String>();
		  /* List<MemberDto> more =  memberService.selectMember();*/
		   String rs = memberService.nicknameCheck(nickname);
		   returnedData.put("nick", rs);
		   return returnedData;
		}
	
	//로그인 창 아이디 비번 체크하기 
	@RequestMapping(params="loc=membercheck")
	public ModelAndView membercheck(MemberDto mins,HttpSession session,HttpServletRequest request){
		 //System.out.println("메소드 전:" + mins.getMem_id());
		ModelAndView modelAndView = new ModelAndView(request.getParameter("loc_save"));
		MemberDto dto = memberService.membercheck(mins);
	    // System.out.println("메소드 후:" + dto);
		 //String mem_id = dto.getMem_id();
		modelAndView.addObject("loc_save", request.getParameter("loc_save"));
	     if(dto == null){
	    	 modelAndView.addObject("result","아이디와 비밀번호가 일치하지 않습니다.");
	    	
	     }else{
	    	    session.setAttribute("idKey", dto.getMem_id());
			}
	     
		return modelAndView;
	}
		

	//회원수정을 위한 메소드======================================================= 
//1. 비밀번호를 한번 더 체크하는 페이지로 이동
	@RequestMapping(params="loc=modify")
	public String membermodify(){
		return "Member/modifycheck";
	}
	
/*2. 비밀번호 체크 한 뒤 맞으면 회원수정 페이지로, 틀리면 메인페이지로 보낸다. 
	* 커맨드 객체 사용 */ 
	@RequestMapping(params="loc=modifycheck")
	public String modifycheck(@ModelAttribute("mem")MemberDto mins,Model model,HttpSession session){
		//System.out.println("회원수정 컨트롤러:" + mins.getMem_id());
		//System.out.println("회원수정 컨트롤러:" + mins.getMem_pass());
       // String mem_id = (String)session.getAttribute("mem_id");
       // System.out.println("세션아이디:" + mem_id);
        		
		MemberDto dto = memberService.modifycheck(mins);
		
		//System.out.println(dto.getMem_mail1()); 
		
		
		if(dto == null){
			model.addAttribute("result","비밀번호가 틀립니다.");
			return "Member/modifycheck";
		}else{
			model.addAttribute("mem",dto);  //ModelAttribute 와 이름 같아야 함.
			return "Member/modify";
		}
		
	}
	
//3.수정 내용 저장
	@RequestMapping(params="loc=modifyok")
	public String modifyok(MemberDto mins){
		//System.out.println("수정값 넘어오니?"+ mins.getMem_birth());
		//System.out.println("수정값 넘어오니?"+ mins.getMem_id());
	    int result = memberService.modifyok(mins); //update 시 반환값은 레코드갯수 숫자를 반환한다. 
		// System.out.println("modify 결과 반환값:" + result);
		//int result = 0; //만약 수정을 못하면서 오류를 일으키지 않는다면 에러창으로 보내기 위해 체크해봄.
	   if(result == 1){
		   return "/index";   
	   }else{
		   return "error/modifyfalse";
	   }
	   
	}
	
//=============================================================================	

	@RequestMapping(params="loc=logout")
	public ModelAndView logutProcess(HttpSession session,HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView((String)request.getParameter("loc_save"));
		session.removeAttribute("idKey");
		modelAndView.addObject("loc_save", request.getParameter("loc_save"));
		return modelAndView;
	}

	
}
