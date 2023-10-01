<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/style.css">
<title>Insert title here</title>
</head>
<body>
	<h2>JSPでループ</h2>
	<%
		for(int i = 1; i <= 10; i++){
	%>
			こんにちは。
			--JSP表示：<%= i %>行目
	<%
		}
	%>
</body>
</html>