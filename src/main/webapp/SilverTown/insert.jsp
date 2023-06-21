<!-- 
	작성자 : 홍서현
	기능 : 회원가입 처리
	Git : https://github.com/Hongseohyun
 -->
<%@page import="member.MemberDto"%>
<%@page import="member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("utf-8");
 
 String email = request.getParameter("email");
 String name = request.getParameter("name");
 String tel = request.getParameter("tel");
 String pwd = request.getParameter("password");
 
 MemberDao dao = new MemberDao();
 MemberDto dto = new MemberDto(name, email, pwd, tel);
 
 dao.memberFunction(dto, "I");
 
 session.invalidate();

 %>
<script type="text/javascript">
alert("회원가입이 완료되었습니다. 로그인해주세요!");
location.href="login.jsp";
</script>
