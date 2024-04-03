<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String path = application.getRealPath("/files");
	int size = 1024 * 1024 * 100;
	
	ArrayList<String> filename = new ArrayList<String>();
	ArrayList<String> orgfilename = new ArrayList<String>();
	
	try {
		
		MultipartRequest multi = new MultipartRequest(
								request,
								path,
								size,
								"UTF-8",
								new DefaultFileRenamePolicy()
				);
		Enumeration e = multi.getFileNames();
		
		while (e.hasMoreElements()) {
			
			String file = (String)e.nextElement();			
			filename.add(multi.getFilesystemName(file));
			orgfilename.add(multi.getOriginalFileName(file));
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	/* response.sendRedirect("ex22_question.jsp"); */
	

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
	
	
	<script src=https://code.jquery.com/jquery-3.7.1.js></script>
	<script>
	
	</script>
</body>
</html>