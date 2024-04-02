<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); //설정 바꾸기
	//너비
	String width = request.getParameter("width");

	//높이
	String height = request.getParameter("height");
	
	//배경색
	String color = request.getParameter("color");
	
	//텍스트박스
	String txt = request.getParameter("txt");
	
	//개수
	String quantity = request.getParameter("quantity");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

	#box {
		width : <%=width %>px;
		height: <%=height %>px;
		background-color: <%=color %>;
		margin-bottom: 10px;
	}
</style>
</head>
<body>
	<!---->
	
	<h1>결과</h1>
	
	<div id=boxes>
	<%-- <div id="box"><%=txt %></div> --%>	
	</div>
	
	
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	const quantity = <%= quantity %>; // 여기에 quantity 값 대입
    let i = 0;
    for(i = 0 ; i < quantity; i++) {
        $('#boxes').append('<div id="box"><%=txt %></div>');
    }
	</script>
</body>
</html>