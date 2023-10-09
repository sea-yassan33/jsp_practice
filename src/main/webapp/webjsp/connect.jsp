<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>データベースへの接続</title>
</head>
<body>
<%
String url = "jdbc:mysql://localhost:3306/selfjsp";
String username = "jspuser";
String password = "jsppass";

//データベースに接続
Connection connection = DriverManager.getConnection(url, username, password);

//データベースからデータを取得
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery("SELECT * FROM member");

//データを表示
while (resultSet.next()) {
 System.out.println(resultSet.getString("name"));
}

//データベースを切断
connection.close();

%>
データベースに接続しました。
</body>
</html>