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

	// 회원정보 출력
	public MemberDTO selectMemberById(String id){
		return db.selectOne("Member.selectMemberById", id);
	}

	// 핸드폰 중복 검사
	public boolean  checkByPhone(String phone){
		return db.selectOne("Member.checkByPhone",phone);
	}

	// 닉네임 중복 검사
	public boolean checkByNickname(String nickname){
		return db.selectOne("Member.checkByNickname",nickname);
	}

	// 로그인
	public boolean isLoginOk(Map<String, String> param){

		return db.selectOne("Member.isLoginOk",param);
	}
	
	// 회원가입
	public int signUp(MemberDTO dto) {
		return db.insert("Member.signUp", dto);
	}
	
	// 아이디로 세션값 주기 위한 로직
	public String selectIdByPhone(String phone) {
		return db.selectOne("Member.selectIdByPhone", phone);
	}
	
	// 이메일로 카톡 로그인 여부 확인하는 로직
	public boolean selectByEmail(String email) {
		return db.selectOne("Member.selectByEmail", email);
	}
	
	//비번 재설정
	public int updatePw(Map<String, String> param) {
		return db.update("Member.updatePw", param);

	}
}
