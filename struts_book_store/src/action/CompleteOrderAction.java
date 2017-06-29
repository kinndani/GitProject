package action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.LookupDispatchAction;

import bean.Order;
import bean.OrderItem;
import bl.OrderManager;
import form.InputOrderForm;

/**
 * 入力した情報の登録するActionです
 */
public class CompleteOrderAction extends LookupDispatchAction {

	protected Map<String, String> getKeyMethodMap() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("button.completeOrder", "complete");
		map.put("button.modifyOrder", "modify");
		return map;
	}

	// 登録処理
	public ActionForward complete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		if (isTokenValid(request)) {
			HttpSession session = request.getSession();
			new OrderManager().store(session);
			resetToken(request);
		}

		return mapping.findForward("complete");
	}

	// 修正処理
	public ActionForward modify(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Order order = new OrderManager().getSessionOrder(request.getSession());

		InputOrderForm orderForm = (InputOrderForm) form;

		OrderItem[] items = order.getItems();
		int[] nums = new int[items.length];
		for (int i = 0; i < nums.length; i++) {
			nums[i] = items[i].getNum();
		}
		orderForm.setNums(nums);
		return mapping.findForward("modify");
	}

}
