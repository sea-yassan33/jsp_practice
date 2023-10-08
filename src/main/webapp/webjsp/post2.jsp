<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<%
//　選択ボックスanimalの値を取得
// 選択ボックスの値に応じてメッセージを変化
String animal = request.getParameter("animal");
switch(animal){
case "ham":
	out.println("とっとこハムスターです");
	break;
case "dog":
	out.println("エアードッグです");
	break;
case "cat":
	out.println("キャッツアイです");
	break;
default:
	out.println("???");
	break;
}
%>
</body>
</html>