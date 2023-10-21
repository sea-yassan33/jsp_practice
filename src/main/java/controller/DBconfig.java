package controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class DBconfig {
	
	//プロパティファイルのパス
	private static final String INIT_FINAL_PATH_STRING = "/Users/yasudaatsushi/eclipse-workspace/practice/Jsp_practice/WebConfig.properties";
	
	//dbの接続情報を取得するメソッド
	/**
	 * 
	 * @return Map<String,String>
	 * getDBinfoメソッドが呼び出された際
	 * 『接続情報、ユーザ名、パスワード』の情報を返す
	 */
	public Map<String, String> getDBinfo() throws FileNotFoundException{
		
		Properties dbInfo = new Properties();
		FileInputStream dbFileInput =  new FileInputStream(INIT_FINAL_PATH_STRING);
		
		try {
			dbInfo.load(dbFileInput);
		}catch (Exception e) {
			System.out.println("データベース設定ファイルが認識できませんでした");
			e.printStackTrace();
		}
		
		//propertiesのキーから値を取得
		String dbUrl = dbInfo.getProperty("msqlUrl");
		String dbUser = dbInfo.getProperty("msqlUser");
		String dbPass = dbInfo.getProperty("msqlPass");
		
		//取得したデータベースの接続情報をMapに格納
		Map<String, String> getDBinfoForMap = new HashMap<>();
		
		getDBinfoForMap.put("url", dbUrl);
		getDBinfoForMap.put("user", dbUser);
		getDBinfoForMap.put("pass", dbPass);
		
		return getDBinfoForMap;
	}
}
