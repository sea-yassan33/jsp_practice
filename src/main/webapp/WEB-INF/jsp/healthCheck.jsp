<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スッキリ健康診断</title>
<link rel="stylesheet" href="./css/main.css">
</head>
<body>
<h1 class="test">スッキリ健康診断</h1>
<form action="HealthCheck" method="post">
	<p>身長：<input type="text" name="height">(cm)
	<br>
	体重：<input type="text" name="weight">(kg)</p>
	<br>
	<input type="submit" value="診断">
</form>
</body>
</html>