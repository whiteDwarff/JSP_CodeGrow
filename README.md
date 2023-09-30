![header](https://capsule-render.vercel.app/api?type=waving&color=timeGradient&text=JSP를%20활용한%20개발자%20RoadMap%20구현&animation=twinkling&fontSize=23&fontAlignY=40&fontAlign=70&height=250&width=1325&align=center)
<br>
<br>
 <div align="center">
  <img src="https://img.shields.io/badge/Java-4B4B77?style=flat&logo=java&logoColor=white"/>
   <img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat&logo=Apache Tomcat&logoColor=black"/>
  <img src="https://img.shields.io/badge/MariaDB-003545?style=flat&logo=MariaDB&logoColor=white"/>
  <img src="https://img.shields.io/badge/html-E34F26?style=flat&logo=html5&logoColor=white"/>
  <img src="https://img.shields.io/badge/css-1572B6?style=flat&logo=css3&logoColor=white"/>

<br><br>

👋 
<br>안녕하세요.저희는 SilverTown 팀입니다.<br>
저희 프로젝트의 이름은 CodeGrow 입니다.<br>
CodeGrow 프로젝트는 웹 개발자들을 위한 온라인 학습 플랫폼입니다.<br>
이 프로젝트는 웹 프로그래밍 과목의 과제로 시작되었으며, 웹 프로그래밍의 다양한 분야를 학습하고 실습할 수 있는 환경을 제공합니다.<br>

</div>
<br><br><br>

## 🛠️ Tech
**1. JSP**<br>
**2. MariaDB**<br>
**3. Tomcat**<br>
**3. HTML / CSS**<br>
**3. JavaScript**<br>

<br><br><br>

## ❗️ Function
 1. 회원가입 및 로그인 | 사용자는 회원가입을 통해 CodeGrow에 가입하고, 로그인하여 자신의 계정으로 접속할 수 있습니다<br>
 2. 강의 컨텐츠 | 다양한 웹 개발 관련 강의를 제공하며, 사용자는 강의를 선택하여 수강할 수 있습니다.<br>
 3. 코드 에디터 | 강의 페이지에는 실습을 위한 코드 에디터가 포함되어 있어 사용자는 동영상 강의를 시청하면서 실시간으로 코드를 작성하고 실행할 수 있습니다.<br>
 4. 질문과 답변 | 사용자들은 질문과 답변 게시판을 통해 서로 도움을 주고 받을 수 있으며, 지식을 공유할 수 있습니다.<br>
 5. 공지사항 | 운영자는 공지사항 게시판을 통해 학습자들에게 중요한 정보와 업데이트 사항을 공지할 수 있습니다.<br>

<br><br><br>

## 💿 Database
**1. Board**<br> 
>*질문 및 공지사항이 저장된 테이블*<br>

| Column | Roles | Key |
| --- | --- | --- |
| id | 게시글의 고유 값 | Primary |
| title | 게시글의 제목 |  | 
| content | 게시글의 내용 |  |
| author_id | 게시글 작성자 | Forign |
| created_at | 작성일 |  |

<br>

**2. Comment**<br>
>*댓글 테이블*<br>

| Column | Roles | Key |
| --- | --- | --- |
| id | 댓글의 고유 값 | Primary |
| content | 댓글의 내용 |  |
| cretaed_at | 작성일 |  |
| post_id | 게시글의 번호 | Forign |
| author_id | 댓글 작성자 | Forign |

<br>

**3. Video Category**<br>
>*비디오의 카테고리 테이블*<br>

| Column | Roles | Key |
| --- | --- | --- |
| id | 카테고리의 고유 값 | Primary |
| name | 카테고리 이름 |  |
| cretaed_at | 등록일 |  |

<br>

**4. Video**<br>
>*동영상의 정보가 저장된 테이블*<br>

| Column | Roles | Key |
| --- | --- | --- |
| id | 동영상의 고유 값 | Primary |
| title | 동영상의 제목 |  |
| description | 동영상의 내용 |  |
| url | 동영상의 링크 |  |
| cretaed_at | 작성일 |  |
| uploader_id | 작성자의 번호 | Forign |
| category_id | 카테고리 번호 | Forign |

<br>

**5. Member**<br>
>*회원의 정보가 저장된 테이블*<br>

| Column | Roles | Key |
| --- | --- | --- |
| id | 회원의 고유 값 | Primary |
| name | 회원의 이름 |  |
| email | 회원의 이메일(아이디) |  |
| phone_number | 회원의 전화번호 |  |
| password | 회원의 비밀번호 |  |
| cretaed_at | 가입일 |  |

<br><br><br>

## 🖥️ 설치 및 실행
1. 이 저장소를 클론합니다.  
2. 이클립스에서 프로젝트를 실행합니다.
3. 쿼리문이 작성 되어있는 데이터베이스 파일을 참조해 데이터베이스를 설정하고, 커넥션 풀을 위해 context.xml에 본인의 데이터 베이스 정보를 입력합니다. 
4. 관리자 계정의 아이디와 비밀번호로 관리자 권한이 필요한 사항에 접근 할 수 있습니다.

<br><br><br>
   
## 프로젝트에 관한 문의 사항은 munstarrrrr@gmail.com 혹은  로 보내주세요!
