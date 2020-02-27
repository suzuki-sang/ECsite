package com.internousdev.ecsite.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
	/*MySQL接続に必要な情報を設定している*/
	/* JDBC ドライバー名 */
	private static String driverName = "com.mysql.jdbc.Driver";

	/* データベース接続 */
	private static String url = "jdbc:mysql://localhost/ecsite";

	/* データベース接続ユーザ名 */
	private static String user = "root";

	/* データベース接続パスワード */
	private static String password = "mysql";

	public Connection getConnection(){
		Connection con = null;

		try{
			Class.forName(driverName);
			con = DriverManager.getConnection(url,user,password);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}
