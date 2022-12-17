package kh.bookday.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.bookday.common.Pw_SHA256;
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
	
	//로그인
	@ResponseBody //에이작스로 보낼 때
	@RequestMapping("login")
	public boolean login(@RequestParam("phone") String phone, @RequestParam("pw") String pw)throws Exception{

		
		//비밀번호 암호화 후 db에 있는 암호화된 비번과 맞는지 확인
		String encryPassword = Pw_SHA256.getSHA256(pw);
		
		//System.out.println("비밀번호:"+pw);
		//System.out.println("암호화된 비밀번호:"+encryPassword);
		
		boolean result=service.isLoginOk(phone,encryPassword);
		
		//System.out.println(result);
		
		if(result) {
			
			//로그인 성공하면 id 값 가져와서 session 만들기
			String id=service.selectIdByPhone(phone);
			System.out.println(id);
			session.setAttribute("loginID",id);
			
			MemberDTO dto=service.selectMemInfo(id);
			String nickname=dto.getNickname();
			System.out.println(nickname);
			session.setAttribute("nickname",nickname);
			
		}
		
		return result;
	}
	
	//로그아웃
	@RequestMapping("logOut")
	public String logOut() {
		session.invalidate();
		return "redirect:/";
	}
	
	//회원가입 관련
	@RequestMapping(value="signup")
	public String insert(MemberDTO dto)throws Exception{
		

		System.out.println("비밀번호:"+dto.getPw());
		
		//비밀번호 암호화
		String encryPassword = Pw_SHA256.getSHA256(dto.getPw());
		dto.setPw(encryPassword);
		System.out.println("암호화된 비밀번호:"+encryPassword);
		
		
		//insert하기
		int result=service.insert(dto);
		
		return "redirect:/member/toLogin";
	}
	
	//닉네임 중복 체크
	@ResponseBody
	@RequestMapping("nickCheck")
	public String nickCheck(@RequestParam("nickname") String nickname)throws Exception{
		
		boolean result= service.nickCheck(nickname);
		
		return String.valueOf(result); 
	}
	
	@ResponseBody //핸드폰 중복 체크 및 비번 찾기에서 회원 여부 체크
	@RequestMapping(value={"phoneCheck","findUser"})
	public String phoneCheck(@RequestParam("phone") String phone)throws Exception{
		
		boolean result= service.phoneCheck(phone);
		System.out.println("번호 중복 체크 결과:"+result);
						
		return String.valueOf(result); 
		
		}
	
	
	@ResponseBody //인증번호 발급 //sms까지는 번호 도용 차단 서비스 때문에 3~5일 정도 기다려야 할 듯
	@RequestMapping("phoneAuth")
	public boolean phoneAuth(@RequestParam("phone") String phone)throws Exception{
				
		//번호에 따른 랜덤 인증번호 생성
		String code= service.CreateRandomMsg(phone);
		System.out.println("번호에 따른 인증번호 발급:"+code);
		
		//해당 번호와 맞는 인증 번호인지 따져줘야 할듯 / 세션으로 담아주기? (여러 방법이 있는데 생각해봐야함)
		session.setAttribute("rand", code);
		
		return true;
	}
	
	//인증 번호 일치 여부 확인
	@ResponseBody
	@GetMapping("phoneAuthOK") //@RequestParam("verifi_code") 
	public boolean phoneAuthOK(@RequestParam("verifi_code") String code) {
		
		//생성된 인증번호
		String rand=(String) session.getAttribute("rand");
		
		//인증번호 비교
		System.out.println(rand+":"+code);
		
		   if (rand.equals(code)) {
		        session.removeAttribute("rand");
		        return false;
		    } 
		    return true;
		}
	
	//비밀번호 찾기 페이지로 이동
	@RequestMapping("toFindPw")
	public String toFindPw() {
		
		return "/member/findpw";
	}
	
	//비밀번호 재설정
	@RequestMapping("Updatepw")
	public String Updatepw(@RequestParam("pw") String pw ,@RequestParam("phone") String phone) {
		
		//다른 에이작스 컨트롤러에서 중복 여부 체크 후 update 시도
		
		//다시 암호화
		String updatePw=Pw_SHA256.getSHA256(pw);
		
		//해당 회원 정보로 들어갈 update 구문(해당 회원의 아이디 및 번호 값으로 조건을 준 후 update
		int result=service.updatePw(updatePw,phone);
		
		return "/member/toLogin";
	}
	
	//카카오 로그인(추가 중)
	//인가 코드 받기
	@RequestMapping(value="kakaoLogin" , method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam("code") String code) {
		
		System.out.println("#########"+code);
		
		//System.out.println(access_token);
		
		return "redirect:/";
	}
	

	//에러 수집
	@ExceptionHandler(Exception.class) 
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	

}
