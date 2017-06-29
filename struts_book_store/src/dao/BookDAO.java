package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import bean.Book;

public class BookDAO {

	private static final String DRIVER_NAME = "org.h2.Driver";
	private static final String JDBC_URL = "jdbc:h2:~/bookstore";
	private static final String DB_USER = "sa";
	private static final String DB_PASS = "";

	public static Map<String, Book> loadAllData() {

		Connection conn = null;
		Map<String, Book> bookMap = new HashMap<String, Book>();

		try {
			System.out.println(DRIVER_NAME);
			Class.forName(DRIVER_NAME);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			System.out.println("接続成功");

			// SELECT文の準備
			String sql = "select id, title, author, publisher, price from Book";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SELECTを実行
			ResultSet rs = pStmt.executeQuery();

			// SELECT文の結果をArrayListに格納
			while (rs.next()) {
				Book book = new Book();
				book.setId(rs.getString("id"));
				book.setTitle(rs.getString("title"));
				book.setAuthor(rs.getString("author"));
				book.setPublisher(rs.getString("publisher"));
				book.setPrice(rs.getInt("price"));
				bookMap.put(book.getId(), book);

				System.out.println();
				System.out.println("id=" + rs.getString("id"));
				System.out.println("title=" + rs.getString("title"));
				System.out.println("author=" + rs.getString("author"));
				System.out.println("publisher=" + rs.getString("publisher"));
				System.out.println("price=" + rs.getInt("price"));
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
		return bookMap;
	}

}
