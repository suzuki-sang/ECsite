package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemDeleteCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();

	public int deleteItem(String id) throws SQLException {
		String sql = "DELETE FROM item_info_transaction WHERE id=?";
		PreparedStatement preparedStatement;
		int res = 1;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return res;
	}
}
