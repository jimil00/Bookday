package kh.bookday.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.bookday.dto.MemberDTO;
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
		return "member/signup";
	}
	
	@RequestMapping("toLogin")
	public String toLogin() {
		return "/member/login";
	}
	
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(String phone, String pw)throws Exception{
		
		boolean result=msv.isLoginOk(phone,pw);
		if(result) {
			
			//로그인 성공하면 id 값 가져와서 session 만들기
			String id=msv.selectIdPwByPhone(phone);
			session.setAttribute("loginID",id);
			
		}
		
		return "redirect:/";
	}
	
	@ResponseBody//에이작스로 보내는 용도
	@RequestMapping(value="nickCheck",produces="text/html;charset=utf8")
	public String nickCheck(String nickname)throws Exception{
		boolean result;

		result = msv.nickCheck(nickname);
		return String.valueOf(result); 
	}
	
	@ResponseBody//에이작스로 보내는 용도
	@RequestMapping(value="phoneCheck",produces="text/html;charset=utf8")
	public String phoneCheck(String phone)throws Exception{
		boolean result;

		result = msv.phoneCheck(phone);
		return String.valueOf(result); 
	}
	
	@RequestMapping(value="signup", method=RequestMethod.POST)
	public String insert(MemberDTO dto)throws Exception{
		
//		//insert 전에 uuid 생성
//		dto.setId(UUID.randomUUID().toString());
		
		//insert하기
		int result=msv.insert(dto);
	
		return "redirect:/member/toLogin";
	}
	

	@RequestMapping("toFindPw")
	public String toFindPw() {
		return "/member/findpw";
	}
	
	@RequestMapping("Findpw") //비밀번호 찾기 2개가 있어야 함. select 
	public String findpw(String phone) {
		
		msv.selectIdPwByPhone(phone);
		
		return "/member/findpw";
	}
	
	@RequestMapping("Updatepw") //비밀번호 찾기 2개가 있어야 함. update
	public String Updatepw(String phone) {
		
		
		//추가 중
		
		return "/member/toLogin";
	}
	

}
