package bl;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import bean.Book;
import bean.Order;
import bean.OrderItem;
import dao.OrderDAO;
import other.Globals;

/**
 * Orderインスタンスを取り扱うクラスです
 */
public class OrderManager {

	public void createOrder(HttpSession session, Book[] books) {

		Order order = new Order();

		//セッションのBookの数だけオブジェクト配列を作成
		OrderItem[] items = new OrderItem[books.length];

		//作成したオブジェクト配列のBookプロパティにデータをセット
		for (int i = 0; i < items.length; i++) {
            items[i] = new OrderItem();
            items[i].setBook(books[i]);
        }

        order.setItems(items);
        session.setAttribute(Globals.SESSION_ORDER, order);
	}

	public Order getSessionOrder(HttpSession session) {
		System.out.println("選んだ本一覧のセッションデータを返す");
		return (Order) session.getAttribute(Globals.SESSION_ORDER);
	}

	// 保持するデータをDBに保存
	public void store(HttpSession session) {
		System.out.println("保持するデータをDBに保存");
		Order order = getSessionOrder(session);
		OrderDAO orderDAO = new OrderDAO();
		orderDAO.store(order);
	}

	public Object loadAllData(ServletContext context) {

		return OrderDAO.loadAllData();
	}

}
