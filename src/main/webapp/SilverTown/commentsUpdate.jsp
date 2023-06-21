<!-- 
	작성자 : 박훈명, 강문호
	기능 : 댓글 수정 처리
	Git : https://github.com/HunMyeong
 -->
<%@page import="Myeong.Hun.BoardDao"%>
<%@page import="Myeong.Hun.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");


String updateContent = request.getParameter("content");   //수정 내용
String content = request.getParameter("title");   //수정 전
String boardTitle = request.getParameter("boardTitle");
String boardTitleName = request.getParameter("boardTitleName");

BoardDto dto = new BoardDto();
dto.setUpdate_Content(updateContent);
dto.setContent(content);
dto.setTitle(boardTitle);


BoardDao dao = new BoardDao();
dao.commentFunction(dto, "U");

%>
<script>
	alert("수정되었습니다.");
	location.href="board_content.jsp?title=<%=boardTitleName%>";
</script>
