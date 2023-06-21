<!-- 
	작성자 : 박훈명
	기능 : 게시글 삭제 처리
	Git : https://github.com/HunMyeong
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Myeong.Hun.BoardDao"%>
<%
	request.setCharacterEncoding("utf-8");

	String boardId = request.getParameter("boardId");
	
	new BoardDao().boardDelete(boardId);
%>

<script>
	alert("삭제되었습니다.");
	if (<%= session.getAttribute("name").equals("admin") %>){
		location.href='news.jsp';
	} else {
		location.href='board.jsp';
	}
</script>