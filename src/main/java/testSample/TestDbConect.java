package testSample;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class TestDbConect {

	public static void main(String[] args) throws FileNotFoundException, IOException{
		
		//変数準備
		Properties properties = new Properties();
		String fileDb = "./WebConfig.properties";
		FileInputStream fis = new FileInputStream(fileDb);
		properties.load(fis);
	
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = properties.getProperty("msqlUrl");
		String user = properties.getProperty("msqlUser");
		String pass = properties.getProperty("msqlPass");
		
		//SQL文
		String sql = "SELECT * FROM test";
		
		try {
			// JDBCドライバのロード
			Class.forName(driver);
			// データベース接続
			con = DriverManager.getConnection(url,user,pass);
			//SQL実行準備
			stmt = con.prepareStatement(sql);
			// 実行結果取得
			rs = stmt.executeQuery();
			
			//データの取得
			while(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				
				System.out.println(id + ":" + name);
			}
		}catch (ClassNotFoundException e) {
			System.out.println("JDBCドライバのロードでエラーが発生しました");
		}catch (SQLException e) {
			System.out.println("データベースへのアクセスでエラーが発生しました。");
		}finally {
			try {
				if(con != null) {
					con.close();
				}
			}catch (SQLException e) {
				System.out.println("データベースへのアクセスでエラーが発生しました。");
			}
		}
	}
}
