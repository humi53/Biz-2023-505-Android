# 2023-09-01
- flutter create --org=com.callor 

- showDialog() State에서 제공해주는 함수

  - of의 의미
  - Dismissible : 커스터마이징
```flutter
keyboardType: TextInputType.phone,  // 키보드 종류 설정.
```

- 게임 : 게임엔진, 메시지통신, 서버구축시(소켓통신), 프로토콜, 메시지
- 채팅 : 서버구축시(소켓통신), 프로토콜, 토큰, 메시지
소켓통신 같은 기술증가냐.
일반적으로 사용하는 안드로이드 개발스킬 증가냐.
- 게시판 : CRUD 사용, 토큰, 안드로이드UI 와 API 통신 집중적으로

- 가제 : 그림자랑게시판
- 메뉴 : (베스트, 최근글, 나의글), 메시지함, 로그인(아웃),  (1:1채팅?)
  - 모든 글에는 댓글이 존재한다.

  - 핵심기능 이미지 첨가 글쓰기와, 댓글

# 싱글이미지 갤러리. (가칭: 나도작가)
- 그린그림이나 멋진사진작품을 가볍게(단한장) 전시하는 게시판

1. 로그인
  0) 탈퇴
  1) 로그아웃
  2) 프로필관리
    - 닉네임(중복불가)
    - 아이디 : 이메일주소
    - 프로필사진
    - 대표작품이미지
    - 찬사작품이미지
2. 타인프로필
  - 닉네임
  - 프로필사진
  - 대표작품이미지
  - 찬사작품이미지
  - 메시지보내기 가능
3. 작품게시판
  1) 뜨거운작품 (10건만 볼수 있게)
  2) 최근작품 (전부볼수있고, 검색가능(제목))
  3) 작가보기 (작가리스트 보이고 작가별 작품감상가능, 작가이름검색 가능)
  4) 내작품보기 (수정,삭제 가능)
3. 글세부보기
  - 제목, 이미지, 간략설명 으로 구성
  - 하트를 누를수 있다. (취소불가)
  - 댓글들을 보고 쓸수 있다. (댓글은 수정불가, 삭제가능)
  - 댓글에 나온 프로필사진을 눌러 해당 유저의 프로필을 볼수 있다.
4. 메시지기능
  - 메시지주고받은 리스트
  - 클릭시 메시지 주고받은내역을 문자메시지 처럼 확인가능하게.
5. 개발자소개와 사용동의내역