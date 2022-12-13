package kh.bookday.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kh.bookday.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	
	@Autowired
	private MemberService msv;
	

	@Autowired
	private HttpSession session;
	
	@RequestMapping("toSignup")
	public String toSignup() {
		return "/member/signup";
	}
	

	@RequestMapping("toLogin")
	public String toLogin() {
		return "/member/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(String phone, String pw)throws Exception{
		
		boolean result=msv.isLoginOk(phone,pw);
		if(result) {
			
			//세션은 고유 아이디값으로 가져오고 싶은데
			session.setAttribute("phone",phone);
		}
		
		return "redirect:/";
	}
	@RequestMapping("toFindPw")
	public String toFindPw() {
		return "/member/findpw";
	}
	
	@RequestMapping("Findpw")
	public String findpw() {
		
		
		return "/member/findpw";
	}
	

}
