<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String msg = "こんにちは、世界！"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= msg %></title>
</head>
<body>
<%-- 指定された文字列を繰り返し表示 --%>
<%
for(int i = 0; i < 5; i++){
	out.println(msg + "<br>");
}
%>
<%@include file = "../include/include.jsp"%>
</body>
</html>