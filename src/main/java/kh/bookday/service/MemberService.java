package kh.bookday.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.MemberDAO;
import kh.bookday.dto.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	
	public boolean phoneCheck(String phone) throws Exception{
		 boolean result=dao.phoneCheck(phone);
		 	
			return result;
		}
	
	public boolean nickCheck(String nickname) throws Exception{
		 boolean result=dao.nickCheck(nickname);
		 	
			return result;
		}
	
	public boolean isLoginOk(String phone, String pw) throws Exception{
		 boolean result=dao.isLoginOk(phone, pw);
		 	
			return result;
		}
	
	public int insert(MemberDTO dto) {

		return dao.insert(dto);
	}
	
	public String selectIdPwByPhone(String phone) {
		return dao.selectIdPwByPhone(phone);
	}
	
	public int updatePw(String phone) {
	
		return dao.updatePw(phone);
	}
}
