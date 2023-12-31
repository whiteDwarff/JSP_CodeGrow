<!-- 
	작성자 : 강문호
	기능 : 공지사항 게시글 리스트
	Git : https://github.com/whiteDwarff
 -->
<%@page import="Myeong.Hun.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Myeong.Hun.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.*"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>

<%
if (session.getAttribute("email") == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>CodeGrow</title>
<link href="./img/icon.png" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="./style/board.css?after">
</head>
<body>

	<%@include file="./header.jsp"%>

	<section id="board-section">
		<div class="board-list">
			<table class="table table-hover">
				<thead>
					<tr class="post-item">
						<th class="post-title">게시글 제목</th>
						<th class="post-author">작성자</th>
						<th class="post-date">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
					request.setCharacterEncoding("utf-8");

					BoardDao dao = new BoardDao();
					ArrayList<BoardDto> dtos = dao.adminBoardList();
					for (BoardDto dto : dtos) {
					%>
					<tr>
						<td><a href="board_content.jsp?title=<%=dto.getTitle()%>"><%=dto.getTitle()%></a></td>
						<td><%=dto.getAuthor_name()%></td>
						<td><%=dto.getCreated_date()%></td>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
			<%
			if (session.getAttribute("email") != null && session.getAttribute("email").equals("admin@codegrow.com")) {
				out.println("<a id='qna-button' href='admin_write.jsp'>공지사항 등록</a>");
			}
			%>
		</div>
	</section>

	<%@include file="./footer.jsp"%>
	<script src="./script/header.js"></script>
	<script>
		const li = document.querySelectorAll('nav a');
		const liLast = document.querySelector('nav a:last-child');
		const table = document.querySelector('table tbody')
		sectionTable = document.getElementById('board-section');
		for (let i = 0; i < li.length; i++) {
			li[i].style.filter = 'blur(1px)';
		}
		liLast.style.filter = 'blur(0)';

		for (let i = 0; i < table.children.length; i++) {
			console.log(i)
			if (i < 10) {
				sectionTable.style.height = '550px';
			} else {
				sectionTable.style.height = 'auto';
			}

		}
	</script>
</body>
</html>

