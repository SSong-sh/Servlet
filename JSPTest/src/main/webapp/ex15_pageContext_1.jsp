<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!-- ex15_pageContext_1.jsp -->
	
	
	<h1>첫번째 페이지</h1>
	
	<%
	
		//reponse.sendRedirect() vs pageContext.forward()
		//- 첫번째 페이지에서 사용하던 자원을 두번째 페이지에 전달하면서 이동
		
		//웹은 상태 관리가 안된다.(Stateless)
		
		
		//jspService() 내의 지역변수
		int num = 100;
	
		
		request.setAttribute("num", num);
		pageContext.setAttribute("num", num);
		//response.sendRedirect("ex15_pageContext_2.jsp"); 클라이언트 이동 > 페이지가 끝나고 이동
		//pageContext.forward("ex15_pageContext_2.jsp"); // 서버 이동 
	%>
	
	<div>num: <%= request.getAttribute("num") %></div>
	
	<a href="ex15_pageContext_2.jsp">이동하기</a>
	
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	
	</script>
</body>
</html>