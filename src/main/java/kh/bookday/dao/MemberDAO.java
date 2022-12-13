package kh.bookday.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.bookday.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession db;
	
	public boolean idCheck(int phone) throws Exception{
		boolean result;
	if(db.selectOne("Member.idCheck",phone)!=null) {
		result=true;
	}else{
		result=false;
	};
	return result;
	}
	
	//map에서 인트랑 스트링 값을 어캐 같이 담아오지(괜히 번호를 아이디로 했다..ㅎ)
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
	
	public int insert(MemberDTO dto) {

		return db.insert("Member.insert", dto);
	}
	
}
