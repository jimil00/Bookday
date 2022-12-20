package kh.bookday.controller;

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
	
	@ResponseBody //에이작스로 보낼 때
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
		//근데 이러면 세션 값을 보내주지 않을거 같음.
		return String.valueOf(result);  //"redirect:/"; 
	}

	
	@ResponseBody//에이작스로 보내는 용도
	@RequestMapping(value="nickCheck",produces="text/html;charset=utf8")
	public String nickCheck(@RequestParam("nickname") String nickname)throws Exception{
		
		boolean result= service.nickCheck(nickname);
		
		return String.valueOf(result); 
	}
	
	@ResponseBody//에이작스로 보내는 용도 //핸드폰 중복 체크 및 비번 찾기에서 회원 여부 체크
	@RequestMapping(value={"phoneCheck","FindUser"}, produces="text/html;charset=utf8")
	public String phoneCheck(@RequestParam("phone") String phone)throws Exception{
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
	
	//비밀번호 재설정
	@RequestMapping("Updatepw")
	public String Updatepw(@RequestParam("phone") String phone) {
		
		//다른 에이작스 컨트롤러에서 중복 여부 체크 후 update 시도
		//해당 회원 정보로 들어갈 update 구문(해당 회원의 아이디 및 번호 값으로 조건을 준 후 update
		int result=service.updatePw(phone);
		
		return "/member/toLogin";
	}
	
	//카카오 로그인(추가 중)
	@RequestMapping(value="kakaoLogin" , method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam("code") String code) {
		
		System.out.println("#########"+code);
		return "redirect:/";
	}
	
	
	@ExceptionHandler(Exception.class) 
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	

}
