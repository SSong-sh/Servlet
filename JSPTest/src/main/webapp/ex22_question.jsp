<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String path = application.getRealPath("/file");

	File dir = new File(path);
	File[] list = dir.listFiles();
	

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
	
	<h1>자료실(탐색기) webapp > files</h1>
	<form method="POST" action="ex22_qok.jsp" enctype="multipart/form-data">
	<table class="vertical">
		<tr>
			<th>파일명</th>
			<th>크기</th>
			<th>수정된 날짜</th>			
		</tr>
		<tr>
			<div id=fileName></div>

		</tr>
	</table>
	<hr />
	<div>파일: <input type="file" name="attach" required /></div>
	<div><input type="submit" value="업로드" /></div>
	</form>
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
		
	</script>
</body>
</html>