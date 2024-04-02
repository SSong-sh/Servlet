<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	//POST > 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	
	//request.getParameter()
	//1. 입력하면 > 입력값 반환
	//2. 입력 안하면 > "" 반환
	//3. 컨트롤 x, 키 오류 > null 반환
	String txt1 = request.getParameter("txt1");
	
	// 암호상자
	String txt2 = request.getParameter("txt2");
	
	// 멀티 텍스트
	String txt3 = request.getParameter("txt3");
	txt3 = txt3.replace("\r\n", "<br>");
	
	// 체크 박스
	//1. value 작성 x
	// - 체크o > "on" 전송
	// - 체크x > null 전송 > 없는 컨트롤 취급 
	// 2. value 작성 o
	// - 체크o > value 작성
	// - 체크x > null 전송 > 없는 컨트롤 취급 
	String txt4 =  request.getParameter("cbl");
	
	// 체크 박스들
	String cb2 = request.getParameter("cb2");
	String cb3 = request.getParameter("cb3");
	String cb4 = request.getParameter("cb4");
	
	String temp = "";
	
	temp += cb2 + ",";
	temp += cb3 + ",";
	temp += cb4 + ",";
	
	
	//체크 박스들
	//String cb5 = request.getParameter("cb5");
	String[] cb5 = request.getParameterValues("cb5");
	
	
	//라디오 버튼
	String rb = request.getParameter("rb");
	
	//셀렉트 박스
	String sel = request.getParameter("sel1");
	
	//셀렉트 박스
	String[] sel2 = request.getParameterValues("sel2");
	
	//히든 태그(=눈에 안 보이는 택스트 박스)
	String id = request.getParameter("id");
	
	//기타 등등
	String regdate = request.getParameter("regdate");
	String color = request.getParameter("color");
	
	//이미지 좌표
	String left = request.getParameter("left");
	String top = request.getParameter("top");
	
	
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
	<!-- ex11_ok.jsp -->
	
	<h1>결과</h1>
	
	<h2>텍스트 박스</h2>		
	<div><%=txt1 %></div>
	
	<h2>암호 박스</h2>		
	<div><%=txt2 %></div>
	
	<h2>멀티 텍스트</h2>		
	<div><%=txt3 %></div>
	
	<h2>체크 박스</h2>		
	<div><%=txt4 %></div>
	
	<h2>체크 박스들</h2>		
	<div><%= temp %></div>
	
	<h2>체크 박스들</h2>		
	<div><%= Arrays.toString(cb5) %></div>

	<h2>라디오 버튼</h2>		
	<div><%= rb %></div>
	
	<h2>셀렉트박스</h2>		
	<div><%= sel %></div>
	
	<h2>셀렉트박스들</h2>		
	<div><%= Arrays.toString(sel2) %></div>
	
	<h2>히든 태그</h2>		
	<div><%= id %></div>
	
	<h2>기타등등</h2>		
	<div><%= regdate %></div>
	<div><%= color %></div>
	
	<h2>고양이 이미지 좌표</h2>		
	<div><%= left %></div>
	<div><%= top %></div>
	
	
	
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	
	</script>
</body>
</html>