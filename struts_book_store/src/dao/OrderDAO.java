package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Order;

public class OrderDAO {

	private static final String DRIVER_NAME = "org.h2.Driver";
	private static final String JDBC_URL = "jdbc:h2:~/bookstore";
	private static final String DB_USER = "sa";
	private static final String DB_PASS = "";

	// 注文データ、注文アイテムをDBに登録
		public void store(Order order) {
			Connection conn = null;
			List orderList = new ArrayList();
	        try {
	        	System.out.println(DRIVER_NAME);
	        	Class.forName(DRIVER_NAME);
				conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);


	            conn.setAutoCommit(false);
	            conn.commit();
	        } catch (SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
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
	        System.out.println("正常に切断を成功");
		}

		public static Order[] loadAllData() {
			Connection conn = null;
	        try {
	        	System.out.println(DRIVER_NAME);
	        	Class.forName(DRIVER_NAME);
				conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);


	            conn.setAutoCommit(false);
	            conn.commit();
	        } catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
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
	        System.out.println("正常に切断を成功");
			return null;
		}
}
