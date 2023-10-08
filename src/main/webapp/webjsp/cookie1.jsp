<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// クッキー情報を取得
// クッキー情報が空でない場合にのみ、は以下の処理を実行
//クッキー配列の内容を順に走査
//クッキの名前が「email」である場合に、その値を取得
String email = "";
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cook : cookies){
		if(cook.getName().equals("email")){
			email = cook.getValue();
			break;
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クッキー情報</title>
</head>
<body>
<form method="post" action="cookie2.jsp">
	メールアドレス：
	<input type="text" name="email" size="40" value="<%=email%>">
	<input type="submit" value="送信">
</form>
</body>
</html>