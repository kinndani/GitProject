package admin.adminIndex.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import admin.adminIndex.bl.LoginManager;

/**
 * ログイン処理を行うActionです
 */
public class LoginAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		//FORMの入力値の取得
		DynaActionForm loginForm = (DynaActionForm) form;
		String loginName = (String) loginForm.get("loginName");
		String password = (String) loginForm.get("password");

		//データベースとの整合性チェック後に画面遷移
		if (new LoginManager().login(request.getSession(), loginName, password) == true) {
			return mapping.findForward("success");
		} else {
			return mapping.findForward("fail");
		}
	}
}
