package kh.bookday.controller;

import java.sql.Timestamp;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

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
		return "member/login";
	}
	
	//로그인
	@ResponseBody //에이작스로 보낼 때
	@RequestMapping("login")
	public boolean login(String phone, String pw){

		
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
			
			MemberDTO dto=service.selectMemberById(id);
			session.setAttribute("nickname",dto.getNickname());
			
		}
		
		return result;
	}
	
	//로그아웃
	@RequestMapping("logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
	
	//회원가입 관련
	@RequestMapping(value="signUp")
	public String signUp(MemberDTO dto){
		

		System.out.println("비밀번호:"+dto.getPw());
		
		//비밀번호 암호화
		String encryPassword = Pw_SHA256.getSHA256(dto.getPw());
		dto.setPw(encryPassword);
		System.out.println("암호화된 비밀번호:"+encryPassword);
		
		
		//insert하기
		service.signUp(dto);
		
		return "redirect:/member/toLogin";
	}
	
	//닉네임 중복 체크
	@ResponseBody
	@RequestMapping("checkByNickname")
	public String checkByNickname(String nickname){
		
		boolean result= service.checkByNickname(nickname);
		
		return String.valueOf(result); 
	}
	
	@ResponseBody //핸드폰 중복 체크 및 비번 찾기에서 회원 여부 체크
	@RequestMapping(value={"checkByPhone","findUser"})
	public boolean checkByPhone(String phone){
		
		boolean result= service.checkByPhone(phone);
		System.out.println("번호 중복 체크 결과:"+result);
						
		return result; 
		
		}
	
	
	@ResponseBody //인증번호 발급
	@RequestMapping("createAuthNum")
	public boolean createAuthNum(String phone){
				
		//번호에 따른 랜덤 인증번호 생성
		String code= service.createRandomMsg(phone);
		System.out.println("번호에 따른 인증번호 발급:"+code);
		
		//세션으로 담아주기? (여러 방법이 있는데 생각해봐야함)
		session.setAttribute("rand", code);
		
		return true;
	}
	
	//인증 번호 일치 여부 확인 //한번에 여러 번 인증버튼을 누르면 여기서 인식을 못함
	@ResponseBody
	@GetMapping("doAuthNumMatch")
	public boolean doAuthNumMatch(String code) {
		
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
	

	//비밀번호 재설정 페이지로 이동
	@RequestMapping("toUpdatePw")
	public String toUpdatePw() {
		
		return "member/updatePw";
	}
	
	//비밀번호 재설정
	@ResponseBody
	@RequestMapping("updatePw")
	public String updatepw(String updatePw, String phone ) {
		
		//다른 에이작스 컨트롤러에서 중복 여부 체크 후 update 시도
		
		//다시 암호화
		String updatedPw=Pw_SHA256.getSHA256(updatePw);
		
		//해당 회원 정보로 들어갈 update 구문(해당 회원의 아이디 및 번호 값으로 조건을 준 후 update
		service.updatePw(updatedPw,phone);
		
		return "true";
	}
	
	//카카오 로그인
	//인가 코드 받기 + 토큰 발급 + 유저 정보 조회 
	@RequestMapping(value="kakaoLogin")
	public String kakaoLogin(@RequestParam("code") String code, Model model) {
		
		String access_Token=service.getAccessToken(code);
		
		MemberDTO userInfo =service.getUserInfo(access_Token);
		
		model.addAttribute("code", code);
		model.addAttribute("access_Token", access_Token);
		model.addAttribute("userInfo", userInfo);
		
		System.out.println(userInfo.getId());
		
		//카카오 최초 로그인인지 확인-> 디비에서 이메일 정보 확인
		boolean result=service.selectByEmail(userInfo.getEmail());
		
		System.out.println(result);
		
		if(result) {
			session.setAttribute("loginID", userInfo.getId());
			session.setAttribute("nickname",userInfo.getNickname());
		}else {
			service.kakaoSignUp(userInfo);

			System.out.println(userInfo);

			
			session.setAttribute("loginID", userInfo.getId());
			session.setAttribute("nickname",userInfo.getNickname());
		}

		return "redirect:/";
	}
	

	//에러 수집
	@ExceptionHandler(Exception.class) 
	public String exceptionHandler(Exception e) {
		e.printStackTrace();
		return "error";
	}
	

}
