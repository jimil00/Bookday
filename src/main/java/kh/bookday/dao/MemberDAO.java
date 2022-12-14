package kh.bookday.dao;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession db;
	
	//휴대폰 중복 검사
	public boolean phoneCheck(String phone) throws Exception{
		boolean result;
	if(db.selectOne("Member.phoneCheck",phone)!=null) {
		result=true;
	}else{
		result=false;
	};
	return result;
	}
	
	//닉네임 중복 검사
	public boolean nickCheck(String nickname) throws Exception{
		boolean result;
	if(db.selectOne("Member.nickCheck",nickname)!=null) {
		result=true;
	}else{
		result=false;
	};
	return result;
	}
	
	//일단 컨트롤러에서도 string으로 받아야 하니까 스트링으로 담고 
	public boolean isLoginOk(String phone, String pw) throws Exception{
		Map<String ,String> param = new HashMap<>();
		param.put("phone", phone);
		param.put("pw", pw);
		
		boolean result;
		if(db.selectOne("Member.isLoginOk",param)!=null) {
			result=true;
		}else{
			result=false;
		};
		return result;
	}
	
	//회원가입
	public int insert(MemberDTO dto) {
		
		//uuid 생성
		String id =UUID.randomUUID().toString();
		dto.setId(id);
		return db.insert("Member.insert", dto);
	}
	
	public String selectIdPwByPhone(String phone) {
		return db.selectOne("Member.selectIdPwByPhone", phone);
	}
	
	public int updatePw(String phone) {

		return db.update("Member.updatePw", phone);
		
	}
	
}
