<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); //설정 바꾸기
	//너비
	String width = request.getParameter("width");

	//높이
	String height = request.getParameter("height");
	
	//배경색
	String color = request.getParameter("bcolor");
	
	//글자색
	String txt = request.getParameter("fcolor");
	
	//개수
	String quantity = request.getParameter("quantity");
	
	//좌우간격
	String xmargin = request.getParameter("range1");
	
	//상하간격
	String ymargin = request.getParameter("range2");
	
	//아이콘
	String icon = request.getParameter("icon");
	
	//테두리
	String borderwidth = request.getParameter("borderwidth");
	
	//테두리 색
	String bordercolor = request.getParameter("bordercolor");
	
	//테두리 스타일
	String borderstyle = request.getParameter("borderstyle");
	
	//테두리 모서리
	String borderradius = request.getParameter("borderradius");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<script src="https://kit.fontawesome.com/4b3c3b390b.js" crossorigin="anonymous"></script>
<style>
	
</style>
</head>
<body>

	<table>
		<tr>
			<th>버튼</th>
		</tr>
		<tr>
			<td><div id="button"></div></td>
		</tr>
	</table>
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	
	</script>
</body>
</html>