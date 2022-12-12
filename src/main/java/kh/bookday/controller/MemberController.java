package kh.bookday.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@RequestMapping("toSignup")
	public String toSignup() {
		return "/member/signup";
	}
	
	@RequestMapping("toLogin")
	public String toLogin() {
		return "/member/login";
	}

}
