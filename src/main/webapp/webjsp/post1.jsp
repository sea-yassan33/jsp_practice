<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<!-- action属性にはポストデータの送信先を指定 -->
<form method="post" action="post2.jsp">
	<label for="animal"></label>
	<select id="animal" name="animal">
		<option value="dog">犬</option>
		<option value="cat">猫</option>
		<option value="ham">ハムスター</option>
	</select>
	<input type="submit" value="送信">
</form>
</body>
</html>