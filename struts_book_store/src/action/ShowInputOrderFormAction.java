package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import bean.Book;
import bl.BookManager;
import bl.OrderManager;
import form.SelectBookForm;

public class ShowInputOrderFormAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// 入力フォームを取得
		SelectBookForm selectForm = (SelectBookForm) form;

		// 選択されたチェックボックスIDを取得
		String[] bookIds = selectForm.getIds();

		// セッションの取得
		HttpSession session = request.getSession();

		// 指定した書籍番号を持つBook配列を取得
		Book[] books = new BookManager().getSelectedBooks(session, bookIds);

		// セッションオブジェクトの削除
		session.removeAttribute("inputOrderForm");

		//セッションにOrder内容をセット
		new OrderManager().createOrder(session, books);

		return mapping.findForward("success");
	}

}
