<!-- 
	작성자 : 홍서현, 강문호
	기능 : 찜 목록 추가 이벤트 처리
	Git : https://github.com/Hongseohyun
 -->
<%@page import="Myeong.Hun.VideoListDto"%>
<%@page import="Myeong.Hun.VideoListDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
String title = request.getParameter("title");
ArrayList<String> list = (ArrayList) session.getAttribute("videoList");
String videoTitle = title;

if (list == null) {
	list = new ArrayList<String>();
	session.setAttribute("videoList", list);
}

list.add(request.getParameter("title"));
%>