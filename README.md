# <div align=center><img src="https://user-images.githubusercontent.com/104720372/224584449-e6147f66-889b-4e13-a7ca-53129df09183.png" width="200" height=""></div><br>책하루
> 책하루는 나만의 독서노트를 기록할 수 있으며, 독서 기록에 대한 통계를 한눈에 확인할 수 있습니다. 또한 종이책을 선호하는 사용자를 위해 종이책 배송 대여 서비스를 제공하는 웹사이트입니다.

## 개요
> 개발 기간: 2022년 12월 12일~2023년 01월 05일<br>
개발 인원: 3명

## 목차

[1. 개발환경](#개발환경)   
[3. 구현 기능](#구현-기능)   
[4. 담당 기능](#담당-기능)   
[5. 프로젝트 설명](#프로젝트-설명)

## 개발환경

+ **Back-End**
  + JAVA 11
  + OracleDB(ojdbc8)

+ **Front-End**
  + HTML5
  + CSS
  + JavaScript
  + jQuery
  + JSP
  + Ajax

+ **Web Server & WAS**
  + AWS EC2(Windows)
  + Apache-Tomcat 8.5

+ **Framework & Library**
  + Spring Framework
  + MyBatis
  + jQuery
  + Gson
  + Json
  + JSTL

+ **API**
  + 카카오(로그인, 결제, 우편번호)
  + 네이버 클라우드 플랫폼(SMS)
  + Summer Note
  + 국립중앙정보도서관

+ **Tools & ETC**
  + Eclipse
  + VSCode
  + SQL Developer
  + GitHub
  + SourceTree
  + GoogleDrive
  + Discord
  + Zoom
  
## 구현 기능

+ **국립중앙정보도서관 Open API를 활용한 책 데이터 크롤링**
  + 책 데이터 총 200개 이상 수집 및 저장

+ **로그인 및 회원가입**
  + 일반 로그인, 카카오 로그인
  + 로그인, 로그아웃 
  + 로그인 인터셉터 
  + 회원가입(카카오우편 API 사용)
  + 비밀번호 재설정 

+ **메인 페이지** 
  + 서비스 소개, 베스트셀러, 스테디셀러, 신간도서, 인기포스트 출력
  + 검색창

+ **마이 페이지**
  + 회원 정보, 구독권 정보 출력 및 회원 정보 수정 
  + 프로필 사진 수정 

+ **검색 페이지**
  + 도서명, 저자명, 장르 검색 시 관련된 책이나 포스트 출력

+ **도서 상세 페이지**
  + 도서명, 저자명, 장르, 출판사, 출판년도, 책소개 출력
  + 위시리스트 담기 
  + 책가방(장바구니) 담기 
  + 리뷰(작성, 출력, 수정, 삭제)
  + 좋아요
  + 관련 포스트, 함께 담은 책 출력

+ **결제 페이지**
  + 구독/미구독 여부에 따른 UI 구성 
  + 종이 책 구독권 결제(카카오페이 API 사용)

+ **책가방(장바구니) 페이지**
  + 구독/미구독 여부에 따른 UI 구성 
  + 담은 책가방(장바구니) 리스트 출력
  + 위시리스트 담기 
  + 이미 담은 위시리스트 재담기 방지
  + 체크박스/전체 체크박스 
  + 삭제/선택 삭제 
  + 대여내역 출력
  + 배송지 정보 출력 및 수정(카카오우편 API 사용)
  + 대여하기

+ **독서노트 페이지**
  + 대여 중, 위시리스트, 내 책장 리스트 출력
  + 책 달력
  + 통계 
  + 책갈피
  + 포스트 작성, 출력, 수정, 삭제

## 담당 역할
+ 서버 구축 및 DB 관리
+ [국립중앙정보도서관 Open API를 활용한 책 데이터 크롤링](#국립중앙정보도서관-Open-API를-활용한-책-데이터-크롤링---담당)
+ [마이 페이지(회원정보, 구독권정보 출력)](#마이-페이지---회원-정보-구독권-정보-출력-담당)
+ [검색 페이지](#검색-페이지---담당)
+ [결제 페이지](#결제-페이지---담당)
+ [책가방(장바구니) 페이지](#책가방장바구니-페이지---담당)   

## 프로젝트 설명

### [국립중앙정보도서관 Open API를 활용한 책 데이터 크롤링] - 담당
```
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

			URL firstURL = new URL("http://data4library.kr/api/loanItemSrch?authKey=c3961a3562330baad3bc05913f5ffc62a973821fd682747cb582763296f3f9c3&pageNo=12&age=20&startDt=2022-01-01&format=json&pageSize=40");
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

				URL secondURL = new URL("http://data4library.kr/api/srchDtlList?authKey=c3961a3562330baad3bc05913f5ffc62a973821fd682747cb582763296f3f9c3&isbn13="+isbn13.get(j)+"&format=json");
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

		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}

```
+ **책 데이터 총 200개 이상 수집 및 저장**

### [로그인 및 회원가입]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/229423249-46f189ff-b9ce-4d89-8ed5-3579b2fbb420.png" width="1200" height=""></div>

### [메인 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231745286-10f97b84-e0f6-48c0-8254-77b4401169f5.gif" width="" height=""></div>

### [마이 페이지] - 회원 정보, 구독권 정보 출력 담당
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231852410-d252102f-0cb1-4d17-ace2-771074873425.png" width="" height=""></div>
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231852496-efbfb4c4-0795-427d-9a44-c83d508b7f06.png" width="" height=""></div>
+ **회원 정보, 구독권 정보 출력**

  + JSTL <c:choose> 태그를 활용하여 구독, 미구독 여부에 따른 화면 구성
    
    + 미구독 회원: 회원 정보, 구독하기 버튼, 회원 정보 수정 버튼 출력
    + 구독 회원: 회원 정보, 구독권 정보, 대여 정보, 회원 정보 수정 버튼 출력

  + JSTL <c:choose> 태그를 활용하여 구독 회원의 대여 여부에 따른 화면 구성

### [검색 페이지] - 담당
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231752102-510f0e36-6aa2-4c2f-b116-c2d9196de09c.gif" width="" height=""></div>

+ **검색창 돋보기 버튼 클릭 시 모든 책과 포스트 출력**
+ **검색창에 도서명, 저자명, 장르 검색 시 관련된 책과 포스트 출력**
+ **도서 클릭 시 도서 상세 페이지로 이동**

### [도서 상세 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231857787-a9dab394-a6f9-4aae-a9d0-9e0fbc53d853.gif" width="" height=""></div>

### [결제 페이지] - 담당
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231871654-5f65dbf3-6221-41c4-96fb-1f55b81013a0.gif" width="" height=""></div>

+ **카카오페이 API를 활용하여 종이 책 구독권 결제 기능**
 
  + 결제 완료 시 회원 테이블의 등급 컬럼 변경과 월 구독 회원 테이블에 해당 사용자 정보 입력 후 결제 완료 팝업창 구현
  + JSTL <c:choose> 태그를 활용하여 이미 결제한 사용자에겐 결제하기 버튼을 이용 중 버튼으로 전환

### [책가방(장바구니) 페이지] - 담당
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231871370-a96a06b4-ccfe-4ec2-abcf-4e6e27d224b9.gif" width="" height=""></div>
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231874839-a76cbe7c-953e-454f-adb7-29736a224ebe.gif" width="" height=""></div>

+ **책가방(장바구니) 리스트 출력**
  
  + JSTL <c:choose> 태그를 활용하여 구독, 미구독 여부에 따른 화면 구성
  
    + 구독 회원: 대여 내역, 배송지 정보, 대여하기 버튼 출력
    + 미구독 회원: 구독하기 버튼 출력
     
  + JSTL <c:forEach> 태그를 활용하여 사용자가 책가방(장바구니)에 담은 항목 출력
  + 담은 책이 없을 때 "책가방에 담은 작품이 없습니다." 출력

+ **위시리스트 담기, 이미 담은 위시리스트 재담기 방지 기능**
  
  + ajax를 활용하여 위시리스트 담기 버튼 클릭 시, 위시리스트 테이블에 해당 도서 존재 여부 조회 후, 존재하지 않으면 위시리스트 테이블에 추가
  + 존재한다면, 즉 이미 담은 책은 "이미 위시리스트에 담긴 책입니다." alert 창 구현

+ **체크박스, 전체 체크박스 기능**
  
+ **삭제 기능**
  
  + 삭제 버튼 클릭 시 해당 도서 삭제
  + 배열과 ajax를 활용하여 체크박스 선택 후 선택 삭제 버튼 클릭 시 선택한 도서 모두 삭제

+ **대여 내역 출력**

  + 대여할 책: 사용자가 체크한 항목의 갯수 출력
  + 남은 대여 횟수: 월 구독 회원 테이블의 남은 대여 횟수 출력
  + 남은 대여 권수: 월 구독 회원 테이블의 남은 대여 권수 
  + 도착 예정일: sysdate + 2
  + 반납일: sysdate + 12
  
+ **주소 검색 / 배송지 변경**
  
  + 주소 검색 버튼 클릭 시 배송지 입력 팝업창 (카카오우편API 사용)
  + 배송지 변경 버튼 클릭 시 기존 입력된 정보 그대로 출력 / 변경하고 싶은 정보 변경 가능

+ **대여하기 버튼**
  
  + if문을 활용하여 담은 책이 없을 때 대여하기 방지 
  + if문을 활용하여 남은 대여 횟수와 남은 대여 권수가 0 이거나, 남은 대여 권수보다 대여할 책이 더 많은 경우 대여하기 방지
  + 남은 대여 횟수, 남은 대여 권수 계산
  
    + 남은 대여 횟수: 대여 완료 시 남은 대여 횟수를 1씩 차감하는 쿼리 작성
    + 남은 대여 권수: 대여 완료 시 ajax를 활용하여 남은 대여 권수에 빌린 권수를 차감하는 쿼리 작성 
  
### [독서노트 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/233368094-0b7c456a-6288-4cfb-b471-a2cc055764f6.gif" width="" height=""></div>
