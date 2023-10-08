<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
選択されたのは、
<%
request.setCharacterEncoding("UTF-8");
String result = String.join("&nbsp;",request.getParameterValues("arch"));
out.print(result);
%>
</body>
</html>