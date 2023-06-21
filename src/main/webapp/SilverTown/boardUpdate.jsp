<!-- 
	작성자 : 박훈명
	기능 : 게시판 글 수정 처리
	Git : https://github.com/HunMyeong
 -->
<%@page import="Myeong.Hun.BoardDao"%>
<%@page import="Myeong.Hun.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	// content로 전송되는 parameter 받기
	String content = request.getParameter("content");
	String title = request.getParameter("boardTitleName"); 
	
	BoardDto dto = new BoardDto();
	dto.setUpdate_Content(content);
	dto.setUpdate_Title(title);
	
	BoardDao dao = new BoardDao();
	dao.boardUpdate(dto);
	
%>

<%= request.getParameter("content") %>
<%= request.getParameter("title") %>
<script>
	alert("수정되었습니다.");
	location.href="board_content.jsp?title=<%=title%>";
</script>

