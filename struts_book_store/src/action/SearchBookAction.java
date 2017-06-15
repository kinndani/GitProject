package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import bl.BookManager;

/**
 * キーワードにマッチする書籍データを検索するActionです
 */
public class SearchBookAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("ServletContextインスタンスの取得");
		ServletContext context = getServlet().getServletContext();

		DynaActionForm dynaForm = (DynaActionForm) form;
		String keyword = (String) dynaForm.get("keyword");
		System.out.println("keyword=" + keyword);

		HttpSession session = request.getSession();
		BookManager manager = new BookManager(context);
		manager.searchByKeyword(context, session, keyword);

		return mapping.findForward("success");
	}

}
