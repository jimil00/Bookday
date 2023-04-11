# <div align=center><img src="https://user-images.githubusercontent.com/104720372/224584449-e6147f66-889b-4e13-a7ca-53129df09183.png" width="200" height=""></div><br>책하루
> 독서노트 기록 및 통계 서비스와 종이 책 구독 서비스를 결합한 웹사이트 개발
## 목차
[1. 개발환경](#개발환경)   
[3. 구현 기능](#구현-기능)   
[4. 담당 기능](#담당-기능)   
[5. 프로젝트 화면](#프로젝트-화면)

## 개발환경
+ **Language**
  + JAVA 11
  + HTML5
  + CSS
  + JavaScript
  + JSP
  + SQL
+ **Database**
  + Oracle
+ **Web Server & WAS**
  + Apache-Tomcat 8.5
  + AWS EC2(Windows)
+ **Framework & Library**
  + Spring Framework
  + MyBatis
  + jQuery
  + Gson
  + Json
  + JSTL Core
  + EL
  + Ajax
+ **협업 툴**
  + GitHub
  + SourceTree
  + GoogleDrive
  + Discord
  + Zoom
  
## 구현 기능
+ **로그인 관련**
  + 일반 로그인/카카오 로그인 기능
  + 로그인/로그아웃 기능
  + 로그인 인터셉터 기능
  + 회원가입 기능(카카오우편 API 사용)
  + 비밀번호 재설정 기능
+ **메인 페이지** 
  + 서비스 소개, 베스트셀러, 스테디셀러, 신간도서, 인기포스트 출력
+ **마이 페이지**
  + 회원정보, 구독권정보 출력 및 회원정보 수정 기능
  + 프로필 사진 수정 기능
+ **검색 페이지**
  + 도서명, 저자명, 장르 검색 시 관련된 책이나 포스트 출력
+ **도서 상세 페이지**
  + 도서명, 저자명, 장르, 출판사, 출판년도, 책소개 출력
  + 위시리스트 담기 기능
  + 책가방(장바구니) 담기 기능 
  + 리뷰 기능(작성, 출력, 수정, 삭제)
  + 좋아요 기능
  + 관련 포스트, 함께 담은 책 출력
+ **결제 페이지**
  + 종이 책 구독권 결제 기능(카카오페이 API 사용)
+ **책가방(장바구니) 페이지**
  + 담은 책가방(장바구니) 리스트 출력
  + 위시리스트 담기 기능
  + 이미 담은 위시리스트 재담기 방지 기능
  + 체크박스/전체 체크박스 기능
  + 삭제/선택 삭제 기능
  + 대여내역 출력
  + 배송지 정보 출력 및 수정 기능(카카오우편 API 사용)
  + 대여하기 기능
+ **독서노트 페이지**
  + 대여 중, 위시리스트, 내 책장 리스트 출력
  + 책 달력 기능
  + 통계 기능
  + 책갈피 기능
  + 포스트 작성, 출력, 수정, 삭제 기능

## 담당 기능
+ 서버 구축 및 DB 관리
+ 국립중앙정보도서관 Open API를 활용한 책 데이터 크롤링
+ [마이 페이지(회원정보, 구독권정보 출력)](#마이-페이지)
+ [검색 페이지](#검색-페이지)
+ [결제 페이지](#결제-페이지)
+ [책가방(장바구니) 페이지](#책가방장바구니-페이지)   

## 프로젝트 화면

### [메인 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/228476115-f91e38b3-ca6e-4dfa-bd35-afd7eb3e07ef.gif" width="900" height=""></div>
### [로그인 화면]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/229423249-46f189ff-b9ce-4d89-8ed5-3579b2fbb420.png" width="1200" height=""></div>
### [마이 페이지]
# <div align=center><img src="" width="1200" height=""></div>
### [검색 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/231100481-2ab4e928-47da-4c5a-9e3f-a88dfab7cfc2.gif" width="" height=""></div>
### [도서 상세 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/229422019-1eb6c16b-3c30-4941-ba93-d66bab32a76e.png" width="1200" height=""></div>
### [결제 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/229422267-f86d0527-1d1b-437b-95b1-211170134f15.png" width="1200" height=""></div>
### [책가방(장바구니) 페이지]
# <div align=center><img src="https://user-images.githubusercontent.com/104720372/229422790-53e6f55d-6fa4-4475-b96a-8fd180279aab.png" width="1200" height=""></div>
+ **구독, 미구독 여부에 따른 choose문 구성**
  + 구독 회원: 대여 현황, 배송지 정보, 대여하기 버튼 출력
  + 미구독 회원: 구독하기 버튼 출력
+ **책가방 리스트 출력**
  + 사용자가 책가방에 담은 항목 출력
  + 책가방에 담겨 있는 데이터 갯수 출력
  + 담은 책이 없을 때 "책가방에 담은 작품이 없습니다." 출력
+ **위시리스트 담기, 삭제 버튼 기능**
  + 이미 담은 책 재방지 기능 추가
+ **체크박스, 전체 체크박스 기능**
  + 체크박스 선택 후 선택 삭제 버튼 클릭 시 선택한 항목만 삭제
+ **대여 내역 출력**
+ **주소 검색 / 배송지 변경**
  + 주소 검색 버튼 클릭 시 배송지 입력 팝업창 (카카오우편API)
  + 배송지 변경 버튼 클릭 시 기존 입력된 정보 그대로 출력 / 변경하고 싶은 정보 변경 가능
+ **대여하기 버튼**
  + 담은 책이 없을 때 대여하기 방지 
  + 남은 대여 횟수, 남은 대여 권수가 0 이거나, 남은 대여 권수보다 대여할 책이 더 많은 경우 대여하기 방지
### [독서노트 페이지]
