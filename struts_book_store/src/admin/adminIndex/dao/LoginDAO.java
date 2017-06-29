package admin.adminIndex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import admin.adminIndex.bean.Administrator;

public class LoginDAO {

	private static final String DRIVER_NAME = "org.h2.Driver";
	private static final String JDBC_URL = "jdbc:h2:~/bookstore";
	private static final String DB_USER = "sa";
	private static final String DB_PASS = "";

	public boolean login(Administrator admin) {

		Connection conn = null;
		try {
			System.out.println(DRIVER_NAME);
			Class.forName(DRIVER_NAME);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			System.out.println("接続成功");

			// SELECT文の準備
			String sql = "select id,password from administrator";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SELECTを実行
			ResultSet rs = pStmt.executeQuery();

			// SELECT文の結果をArrayListに格納
			if(rs.next()) {
				if(admin.getLoginName().equals(rs.getString("id"))&&admin.getPassword().equals(rs.getString("password"))){
					return true;
				}else{
					return false;
				}
			}else{
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			System.out.println("データベース切断");
			if (conn != null) {
				try {
					conn.close();
					System.out.println("正常に切断を成功");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
