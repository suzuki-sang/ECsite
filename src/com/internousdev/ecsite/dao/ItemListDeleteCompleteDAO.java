package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;//パラメータ付きSQL文をデータベースに送る
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemListDeleteCompleteDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public int deleteItemList() throws SQLException {
		String sql = "DELETE FROM item_info_transaction";//商品履歴をDBから削除する
		PreparedStatement ps;
		int result =0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();//削除したらアップデートして更新
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return result;
	}

}
