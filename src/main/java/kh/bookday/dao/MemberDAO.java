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
	
	//핸드폰 중복 검사
	public boolean phoneCheck(String phone) throws Exception{
		return db.selectOne("Member.phoneCheck",phone);
	}

	//닉네임 중복 검사
	public boolean nickCheck(String nickname) throws Exception{
		return db.selectOne("Member.nickCheck",nickname);
	}

	//로그인
	public boolean isLoginOk(Map<String, String> param) throws Exception{
		
		return db.selectOne("Member.isLoginOk",param);
	}
	
	//회원가입
	public int insert(MemberDTO dto) {
		return db.insert("Member.insert", dto);
	}

	//아이디로 세션값 주기 위한 로직
	public String selectIdByPhone(String phone) {
		return db.selectOne("Member.selectIdByPhone", phone);
	}
	
	//비번 재설정
	public int updatePw(String phone) {
		return db.update("Member.updatePw", phone);

	}

}
