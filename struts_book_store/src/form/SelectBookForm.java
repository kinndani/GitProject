package form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 * キーワードにマッチした書籍データ格納するActionFormです
 */
public class SelectBookForm extends ActionForm {

	private String[] ids = null;

	public String[] getIds() {
		return ids;
	}

	public void setIds(String[] ids) {
		this.ids = ids;
	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {
		System.out.println("SelectBookFormのreset");
		ids = null;
	}


	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

		System.out.println("SelectBookFormのvalidate");
		ActionErrors errors = new ActionErrors();
		if (ids == null || ids.length == 0) {
			errors.add("notselected", new ActionMessage("errors.notselected", "本"));
		}
		return errors;
	}

}
