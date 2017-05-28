package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import form.LoginForm;

public class LoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		if (this.isCancelled(request)) {
			System.out.println("キャンセルボタンが押されました！！");
			//だるいからこの後の分岐処理は省く
		} else {
			System.out.println("送信ボタンが押されました！！");
		}

		LoginForm loginForm = (LoginForm) form;
		request.setAttribute("id", loginForm.getId());

		System.out.println("メッセージの作成");
		ActionMessages messages = new ActionMessages();
		messages.add("mes1", new ActionMessage("message.id", "パスワード"));

		System.out.println("メッセージをリクエストコンテキストに保存");
		this.saveMessages(request, messages);

		return mapping.findForward("success");
	}

}
