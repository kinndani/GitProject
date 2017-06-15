package bl;

import java.sql.SQLException;
import java.util.Collection;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import dao.BookDAO;
import form.Book;
import other.Globals;

public class BookManager implements java.io.Serializable {

	public BookManager(ServletContext context) {
		System.out.println("initが動かないので代用");
		context.setAttribute(Globals.CONTEXT_BOOKS, BookDAO.loadAllData());
	}

	public void init(ServletContext context) throws SQLException {
		System.out.println("BookManagerクラスのinit実行");
		context.setAttribute(Globals.CONTEXT_BOOKS, BookDAO.loadAllData());
	}

	public void searchByKeyword(ServletContext context, HttpSession session, String keyword) {

		System.out.println("BookManagerクラスのsearchByKeyword実行");
		Collection<Book> collection = getBookMaster(context).values();

		System.out.println("Bookインスタンスをsessionスコープに登録");
		Book[] books = collection.toArray(new Book[collection.size()]);
		session.setAttribute(Globals.SESSION_SEARCHED_BOOKS, BookDAO.searchByKeyword(books, keyword));
	}

	// 書籍マスタデータを対象に、キーワード検索を行う
	private Map getBookMaster(ServletContext context) {

		System.out.println("BookManagerクラスのgetBookMaster実行");
		return (Map) context.getAttribute(Globals.CONTEXT_BOOKS);
	}

}
