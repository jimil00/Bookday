package kh.bookday.common;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

public class Kakao_Login {
	
	public String getAccessToken() {
		String access_Token="";
		String grant_type="/authorization_code";
		String client_id="&client_id=5d39c4a90d2cd9ef1649a8e6108ba98";
		String redirect_uri= "&redirect_uri=http://localhost:8090/member/kakaoLogin";
		String reqURL ="https://kauth.kakao.com/oauth/token";
		
		//카카오 서버랑 연결하기 위한 url 선언
		//URL url = new URL(reqURL);
		
		//http 연결
		//HttpURLConnection conn= (HttpURLConnection) url.openConnection();
		
		//System.out.println();과 유사한 기능으로 스트림에 문자열을 출력하는 기능
		//outputstreamWriter에 출력 스트림 연결 후 버퍼라이터에 인스턴스 생성  //이미 아웃풋 스트림이 있는데 버퍼를 쓰는 이유는?
		//BufferedWriter bw= new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		StringBuilder sb = new StringBuilder();
//		sb.append();
//		sb.append();
//		sb.append();
//		bw.write(sb.toString());
//		bw.flush();
		
		//결과 코드 받아오기
		//int responseCode=conn.getResponseCode();
		//System.out.println("카카오 로그인 응답 코드: "+responseCode);
		
		//response로 받은 json 코드 읽어오기
		//BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

				
		//토큰 요청에 필요한 헤더
//			String post="https://kauth.kakao.com/oauth/token";
//			String content_type="/application/x-www-form-urlencoded";
//			String grant_type="/authorization_code";
//			String client_id="/5d39c4a90d2cd9ef1649a8e6108ba988";
//			String redirect_uri= "/redirect_uri=http://localhost:8090/member/kakaoLogin";
//			String AUTHORIZE_code=code;
//			
//			
//			String access_token=post+content_type+grant_type+client_id+data_urlencode+code;
	return null;
	
	}
	

}

