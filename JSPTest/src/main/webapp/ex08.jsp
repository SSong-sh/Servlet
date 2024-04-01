<%@page import="com.test.jsp.MyUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int a = 10;
	//이미 자체로 메서드 안 이라서 메서드를 만들 수 없음   
	
	MyUtil util = new MyUtil();
	
%>
<%!
	//선언부
	//클래스 멤버 변수 > 최대 사용은 해당 클래스에만 > 자주 사용 안함
	public int b = 20;

	public int sum(int a, int b) {
		return a + b;
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>10 + 20 = <%=sum(10,20) %></div>
	<div>30 + 40 = <%=sum(30,40) %></div>
	<div>50 + 60 = <%=util.sum(50,60) %></div>
</body>
</html>