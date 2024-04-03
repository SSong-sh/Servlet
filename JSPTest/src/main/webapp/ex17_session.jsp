<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	session.setAttribute("a", 10);

	application.setAttribute("b", 20);
	
	//방문자 수 > 상태 유지 가능
	if(session.getAttribute("count") == null) {
		session.setAttribute("count", 0);
	} else {
		session.setAttribute("count", (int)session.getAttribute("count") + 1);
	}
	
	if(application.getAttribute("count") == null) {
		application.setAttribute("count", 0);
	} else {
		application.setAttribute("count", (int)application.getAttribute("count") + 1);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

</style>
</head>
<body>
	<!---->
	
	<h1>session & application</h1>
	
	<div>a: <%= session.getAttribute("a") %></div>
	<div>b: <%= application.getAttribute("b") %></div>
	
	<%
		//response.sendRedirect("ex17_session_2.jsp");
		//pageContext.forward("ex17_session_2.jsp");
	
	%>
	
	<h2>방문자 수</h2>
	
	<div>count: <%= session.getAttribute("count") %></div>
	<div>count: <%= application.getAttribute("count") %></div>
	
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	
	</script>
</body>
</html>