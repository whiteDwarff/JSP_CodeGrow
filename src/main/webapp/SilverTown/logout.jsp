<!-- 
	작성자 : 홍서현
	기능 : 로그아웃 처리
	Git : https://github.com/Hongseohyun
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	session.invalidate();
%>
<script>
	alert("로그아웃 되었습니다.");
	location.href="login.jsp";
</script>