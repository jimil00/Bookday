package kh.bookday.bookdata;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class bookData {
	
	public static void main(String[] args) {

		/* 데이터 추출 */

		// 파싱한 데이터를 저장할 변수 (첫번째 파싱)
		String firstParsing = "";

		try {

			URL firstURL = new URL("http://data4library.kr/api/loanItemSrch?authKey=c3961a3562330baad3bc05913f5ffc62a973821fd682747cb582763296f3f9c3&pageNo=1&age=20&startDt=2022-01-01&format=json&pageSize=10");
			BufferedReader bf1;
			bf1 = new BufferedReader(new InputStreamReader(firstURL.openStream(), "UTF-8"));
			firstParsing = bf1.readLine();

			JSONParser jsonParser = new JSONParser();
			JSONObject firstAllData = (JSONObject)jsonParser.parse(firstParsing);
			System.out.println(firstAllData); // 첫번째 파싱 전체 데이터 출력

			JSONObject response = (JSONObject) firstAllData.get("response"); // 첫번째 파싱 전체 데이터의 response 객체 추출
			JSONArray docs = (JSONArray) response.get("docs"); // response 객체의 docs 배열 추출

			// 추출한 데이터를 저장할 배열 생성
			ArrayList <String> ranking = new ArrayList<>(); 
			ArrayList <String> isbn13 = new ArrayList<>(); 
			ArrayList <String> bookname = new ArrayList<>(); 
			ArrayList <String> authors = new ArrayList<>(); 
			ArrayList <String> class_nm = new ArrayList<>(); 
			ArrayList <String> publisher = new ArrayList<>(); 
			ArrayList <String> publication_year = new ArrayList<>(); 
			ArrayList <String> bookImageURL = new ArrayList<>(); 

			// docs 배열에서 원하는 데이터 각 list에 저장
			for(int i=0; i<docs.size(); i++) {

				JSONObject doc = (JSONObject) docs.get(i);
				JSONObject realDoc = (JSONObject)doc.get("doc");

				ranking.add((String) realDoc.get("ranking"));
				isbn13.add((String) realDoc.get("isbn13"));
				bookname.add((String) realDoc.get("bookname"));
				authors.add((String) realDoc.get("authors"));
				class_nm.add((String) realDoc.get("class_nm"));
				publisher.add((String) realDoc.get("publisher"));
				publication_year.add((String) realDoc.get("publication_year"));
				bookImageURL.add((String) realDoc.get("bookImageURL"));

			}

			// 파싱한 데이터를 저장할 변수 (두번째 파싱)
			String secondParsing = "";

			// 추출한 데이터를 저장할 배열 생성
			List <String> description = new ArrayList<>(); 

			for(int j=0; j<docs.size(); j++) {

				URL secondURL = new URL("http://data4library.kr/api/srchDtlList?authKey=c3961a3562330baad3bc05913f5ffc62a973821fd682747cb582763296f3f9c3&isbn13="+isbn13.get(j)+"&format=json&pageSize=10");
				BufferedReader bf2;
				bf2 = new BufferedReader(new InputStreamReader(secondURL.openStream(), "UTF-8"));
				secondParsing = bf2.readLine();

				System.out.println("책소개 데이터 추출");
				
				JSONParser jsonParser2 = new JSONParser();
				JSONObject secondAllData = (JSONObject)jsonParser2.parse(secondParsing);

				JSONObject response2 = (JSONObject) secondAllData.get("response");
				JSONArray detail = (JSONArray) response2.get("detail");
				JSONObject book = (JSONObject)detail.get(0);
				JSONObject realBook = (JSONObject)book.get("book");

				description.add((String) realBook.get("description"));

			}

			/* 데이터 저장 */

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "bookday";
			String dbPW = "bookday";
			Connection con = DriverManager.getConnection(dbURL, dbID, dbPW);

			String sql = "insert into book values(?,?,?,?,?,?,?,?,?)";

			for (int k=0 ; k<docs.size(); k++) {
				PreparedStatement pstat = con.prepareStatement(sql);
				pstat.setString(1, isbn13.get(k));
				pstat.setString(2, ranking.get(k));
				pstat.setString(3, bookname.get(k));
				pstat.setString(4, authors.get(k));
				pstat.setString(5, class_nm.get(k));
				pstat.setObject(6, publisher.get(k));
				pstat.setString(7, publication_year.get(k));
				pstat.setString(8, bookImageURL.get(k));
				pstat.setString(9, description.get(k));

				int result = pstat.executeUpdate();

				if(result > 0 ) {
					System.out.println("입력 성공");
				}else {
					System.out.println("입력 실패");
				}

			}
//			con.commit();
//			con.close();

		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
