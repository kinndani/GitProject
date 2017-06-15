package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import form.Mutter;

public class MutterDAO {

	private static final String DRIVER_NAME = "org.h2.Driver";
	private static final String JDBC_URL = "jdbc:h2:~/docoTsubu";
	private static final String DB_USER = "sa";
	private static final String DB_PASS = "";

	public List<Mutter> findAll() {

		Connection conn = null;
		List<Mutter> mutterList = new ArrayList<Mutter>();

		try {
			System.out.println(DRIVER_NAME);
			Class.forName(DRIVER_NAME);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			// SELECT文の準備
			String sql = "SELECT ID,NAME,TEXT FROM MUTTER ORDER BY ID DESC";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SELECTを実行
			ResultSet rs = pStmt.executeQuery();

			// SELECT文の結果をArrayListに格納
			while (rs.next()) {
				int id = rs.getInt("ID");
				String userName = rs.getString("NAME");
				String text = rs.getString("TEXT");
				Mutter mutter = new Mutter(id, userName, text);
				mutterList.add(mutter);
				System.out.println(id);
				System.out.println(userName);
				System.out.println(text);
				System.out.println("aaaaaaaa");
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		finally {
			System.out.println("データベース切断");
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		System.out.println("正常にreturnを成功");
		return mutterList;
	}

	public boolean create(Mutter mutter) {
		Connection conn = null;

		try {
			System.out.println("データベース接続");
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			System.out.println("INSERT文の準備（idは自動連番なので指定しなくてよい）");
			String sql = "INSERT INTO MUTTER(NAME,TEXT) VALUES(?,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			System.out.println("INSERT文中の「？」に使用する値を設定しSQLを完成");
			pStmt.setString(1, mutter.getUserName());
			pStmt.setString(2, mutter.getText());

			System.out.println("INSERT文を実行");
			int result = pStmt.executeUpdate();

			if (result != 1) {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			System.out.println("データベース切断");
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return true;
	}

}
