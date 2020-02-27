package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserDeleteCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();

	public int deleteUser(String id) throws SQLException {
		String sql = "DELETE FROM login_user_transaction WHERE id=?";
		PreparedStatement preparedStatement;
		int result = 1;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return result;
	}
}
