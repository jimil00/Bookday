package kh.bookday.controller;

import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.bookday.dto.MemberDTO;
import kh.bookday.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	
	@Autowired
	private MemberService service;
	

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
	
	//에이작스로 하면 안되겠다
	@ResponseBody //에이작스로 보낼 때 @RequestParam("phone") String phone, @RequestParam("pw") String pw
	@RequestMapping(value="login",produces="text/html;charset=utf8")
	public String login(@RequestParam("phone") String phone, @RequestParam("pw") String pw)throws Exception{

		boolean result=service.isLoginOk(phone,pw);
		
		System.out.println(result);
		
		if(result) {
			
			//로그인 성공하면 id 값 가져와서 session 만들기
			String id=service.selectIdByPhone(phone);
			System.out.println(id);
			session.setAttribute("loginID",id);
			
		}
		//근데 이러면 세션 값을 보내주려나? 안 보내줄거 같음...
		return String.valueOf(result); 
	}
	

//	@RequestMapping(value="login",produces="text/html;charset=utf8")
//	public String login(@RequestParam("phone") String phone, @RequestParam("pw") String pw)throws Exception{
//
//		boolean result=service.isLoginOk(phone,pw);
//		
//		System.out.println(result);
//		
//		if(result) {
//			
//			//로그인 성공하면 id 값 가져와서 session 만들기
//			String id=service.selectIdByPhone(phone);
//			System.out.println(id);
//			session.setAttribute("loginID",id);
//			
//			}
//		return "redirect:/"; 
//	}
//	
	
	@ResponseBody//에이작스로 보내는 용도
	@RequestMapping(value="nickCheck",produces="text/html;charset=utf8")
	public String nickCheck(String nickname)throws Exception{
		
		boolean result= service.nickCheck(nickname);
		
		return String.valueOf(result); 
	}
	
	@ResponseBody//에이작스로 보내는 용도
	@RequestMapping(value="phoneCheck",produces="text/html;charset=utf8")
	public String phoneCheck(String phone)throws Exception{
		boolean result= service.phoneCheck(phone);
		return String.valueOf(result); 
	}
	
	@RequestMapping(value="signup", method=RequestMethod.POST)
	public String insert(MemberDTO dto)throws Exception{
		
//		//insert 전에 uuid 생성
//		dto.setId(UUID.randomUUID().toString());
		
		//insert하기
		int result=service.insert(dto);
	
		return "redirect:/member/toLogin";
	}
	

	@RequestMapping("toFindPw")
	public String toFindPw() {
		
		return "/member/findpw";
	}
	
	//비밀번호 찾기에서 사용자 찾기
	@ResponseBody//에이작스로 보내는 용도
	@RequestMapping(value="FindUser",produces="text/html;charset=utf8")
	public String FindUser(String phone)throws Exception{
		boolean result= service.phoneCheck(phone);
		
		return String.valueOf(result);
	}

	//비밀번호 재설정
	@RequestMapping("Updatepw")
	public String Updatepw(String phone) {
		
		
		//추가 중
		
		return "/member/toLogin";
	}
	
	
	
	
	@ExceptionHandler(Exception.class) 
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	

}
