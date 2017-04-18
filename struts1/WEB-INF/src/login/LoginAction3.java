package login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

public class LoginAction3 extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// DynaActionFormを使用しているので、DynaActionFormをそれにキャスト
		DynaActionForm dynaForm = (DynaActionForm) form;

		// idプロパティの値の取得
		Integer id = (Integer) dynaForm.get("id");
		String password = (String) dynaForm.get("password");
		String list1 = (String) dynaForm.get("list", 0);
		String list2 = (String) dynaForm.get("list", 1);

		// requestスコープに保存
		request.setAttribute("id", id);
		request.setAttribute("password", password);
		request.setAttribute("list1", list1);
		request.setAttribute("list2", list2);

		// パスワードチェック
		if (password.length() < 1) {

			ActionMessages errors = new ActionMessages();
			errors.add("password", new ActionMessage("errors.required", "パスワード"));
			saveErrors(request, errors);
			return mapping.getInputForward();
		}

		// ActionForwordの返却
		return mapping.findForward("success");
	}
}
