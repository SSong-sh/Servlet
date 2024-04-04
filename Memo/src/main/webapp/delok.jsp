<%@page import="com.test.memo.MemoDTO"%>
<%@page import="com.test.memo.MemoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

	//1. 데이터 가져오기(seq, pw)
	//1.5 권한 체크
	//2. DB 작업 > DTO 포장 > DAO 위임 > delete
	//3. 실행 결과 > 피드백 
	
	//POST + 한글
	request.setCharacterEncoding("UTF-8");
	
	//데이터 가져오기
	String pw = request.getParameter("pw");
	String seq = request.getParameter("seq");
	
	
	//DB 작업 > delete
	MemoDAO dao = new MemoDAO();
	
	MemoDTO dto = new MemoDTO();
	
	dto.setPw(pw);
	dto.setSeq(seq);
	
	int result = 0;
	
	if(dao.check(dto)) {
		result = dao.del(seq);
	} 
	
	if(result > 0) {
		response.sendRedirect("/memo/list.jsp"); //얘만 /memo 써줘야 인식 
	} else {
		out.println("<script>alert('failed'); history.back();</script>");
		out.close();
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Memo</title>


<%@ include file="/inc/asset.jsp" %>

<style>

</style>
</head>
<body>
	<!-- editok.jsp -->
	
	<%@ include file="/inc/header.jsp" %>
	
	<h1>Memo <small>수정하기</small></h1>
	
	<% if(result  > 0 ) { %>
	<div class="message">
		메모 작성을 완료했습니다.
	</div>
	<div>
		<button type="button" class="back" onclick="location.href='/memo/list.jsp';">돌아가기</button>
	</div>
	<% } else { %>
	<div class="message">
		메모 작성을 실패했습니다.
	</div>
	<div>
	<button type="button" class="back" onclick="history.back();">돌아가기</button>
	</div>
	<% } %>
	<script>

		
	</script>
</body>
</html>











