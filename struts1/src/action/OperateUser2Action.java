package action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.LookupDispatchAction;

public class OperateUser2Action extends LookupDispatchAction {

	@Override
	protected Map getKeyMethodMap() {

		Map<String, String> map = new HashMap<String, String>();
		map.put("button.create", "create");
		map.put("button.update", "update");
		map.put("button.delete", "delete");

		return map;
	}


	public ActionForward create(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("create処理");
		return mapping.findForward("create");
	}

	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("update処理");
		return mapping.findForward("update");
	}

	public ActionForward delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("delete処理");
		return mapping.findForward("delete");
	}

	public ActionForward cancelled(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("cancelled処理");
		return mapping.findForward("cancelled");
	}

	protected ActionForward unspecified(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("unspecified処理");
		return mapping.findForward("unspecified");
	}

}
