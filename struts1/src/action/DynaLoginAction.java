package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

public class DynaLoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO 自動生成されたメソッド・スタブ

		DynaActionForm dynaForm = (DynaActionForm) form;

		Integer id = (Integer) dynaForm.get("id");
		String post1 = (String) dynaForm.get("post", 0);
		String post2 = (String) dynaForm.get("post", 1);

		String[] post = (String[]) dynaForm.getStrings("post");

		System.out.println("Postチェック");
		if(post1.length()==0){
			ActionMessages errors = new ActionMessages();
			errors.add("post", new ActionMessage("error.post"));
			saveErrors(request, errors);
			return mapping.getInputForward();
		}

		request.setAttribute("id", id);
		request.setAttribute("post1", post1);
		request.setAttribute("post2", post2);
		request.setAttribute("post", post);


		return mapping.findForward("success");
	}

}
