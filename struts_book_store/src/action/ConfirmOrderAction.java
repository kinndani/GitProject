package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import bean.Order;
import bean.OrderItem;
import bl.OrderManager;
import form.InputOrderForm;

public class ConfirmOrderAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("注文者情報と冊数のオブジェクト取得");
		InputOrderForm orderForm = (InputOrderForm) form;

		System.out.println("選んだ本一覧のオブジェクトを取得");
		Order order = new OrderManager().getSessionOrder(request.getSession());

		System.out.println("選択した本と冊数を取得");
		OrderItem[] items = order.getItems();

		System.out.println("選んだ本の冊数を取得");
		int[] nums = orderForm.getNums();

		System.out.println("選択した行の冊数をセットしていく");
        for (int i = 0; i < items.length; i++) {
        	System.out.println();
        	items[i].setNum(nums[i]);
        }

        System.out.println("プロパティ名が一致する部分だけコピー");
        BeanUtils.copyProperties(order, orderForm);

        System.out.println("入力画面のトークンを生成する。");
        saveToken(request);

		return mapping.findForward("success");
	}


}
