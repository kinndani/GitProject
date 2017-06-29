package admin.orders.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import bl.OrderManager;

/**
 * 保存されている注文データを全て読み込み、その内容を表示するActionです
 */
public class ShowOrdersAction extends Action {


	public ShowOrdersAction() {
		System.out.println("aaaa");
	}


	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ServletContext context = getServlet().getServletContext();
		request.setAttribute("orders", new OrderManager().loadAllData(context));

		return mapping.findForward("success");
	}
}
