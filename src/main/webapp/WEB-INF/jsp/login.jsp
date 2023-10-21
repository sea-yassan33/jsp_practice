<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>ログイン画面</title>
</head>
<body>
	<div class="mx-auto" style="width: 300px;">
		<h1 class="mb-3" style="text-align: center">管理者ログイン画面</h1>
		<form action="/Jsp_practice/LoginServlet" method="post">
		  <div class="mb-3">
		    <label for="adminID" class="form-label">管理者ID</label>
		    <input type="text" class="form-control" id="adminID" name="admin_id">
		  </div>
		  <div class="mb-3">
		    <label for="pass" class="form-label">パスワード</label>
		    <input type="password" class="form-control" id="pass" name="password">
		  </div>
		  <button type="submit" class="btn btn-primary">ログイン</button>
		</form>
	</div>
</body>
</html>