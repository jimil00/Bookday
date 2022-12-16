package kh.bookday.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.bookday.common.NCP_sms;
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
	
	public int updatePw(String pw,String phone) {
		Map<String ,String> param = new HashMap<>();
		param.put("pw", pw);
		param.put("phone", phone);
		
		return dao.updatePw(param);
	}
	
	
	//NCP_sms 관련 서비스 로직
	//인증번호 난수 생성 후 발송
	public String CreateRandomMsg(String phone){
		NCP_sms sms = new NCP_sms();
		Random rand=new Random();
		String msg="";
		
		for(int i=0; i<6; i++) {
			//0~10자 이내의 숫자 1개가 6번 나오도록 반복 ex)023855
			String rnum=Integer.toString(rand.nextInt(10));
			msg +=rnum;
		}
		System.out.println("회원가입 문자 인증: "+msg);
		
		//메세지를 보내는 로직에 핸드폰 번호와 인증번호를 전달
		//sms.send_msg(phone, msg);

		return msg;
	}
}
