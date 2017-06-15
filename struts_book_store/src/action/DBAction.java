package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.MutterDAO;
import form.Mutter;

public class DBAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		MutterDAO dao = new MutterDAO();
		List<Mutter> mutterList=dao.findAll();

		request.setAttribute("list", mutterList);

		return mapping.findForward("success");
	}

}
