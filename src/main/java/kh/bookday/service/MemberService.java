package kh.bookday.service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.dao.MemberDAO;
import kh.bookday.dto.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	public MemberDTO selectMemInfo(String id) {
		return dao.selectMemInfo(id);
	}
	
	public boolean phoneCheck(String phone) throws Exception{
		 boolean result=dao.phoneCheck(phone);
		 	
			return result;
			}
	
	
	public boolean nickCheck(String nickname) throws Exception{
		 boolean result=dao.nickCheck(nickname);
		 	
			return result;
		
		}
	
	public boolean isLoginOk(String phone, String pw) throws Exception{
		Map<String ,String> param = new HashMap<>();
		param.put("phone", phone);
		param.put("pw", pw);
		
		boolean result=dao.isLoginOk(param);
		
		return result;			
		}
	
	public int insert(MemberDTO dto) {
		
		//uuid 생성
		String id =UUID.randomUUID().toString();
		dto.setId(id);
		return dao.insert(dto);
	}
	
	public String selectIdByPhone(String phone) {
		return dao.selectIdByPhone(phone);
	}
	
	public int updatePw(String phone) {
	
		return dao.updatePw(phone);
	}
}
