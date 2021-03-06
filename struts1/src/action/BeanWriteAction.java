package action;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.SampleBean;

public class BeanWriteAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		SampleBean sampleBean=(SampleBean)form;
		sampleBean.setBirthDay(new Date());

		String[] value = {"あ","い"};
		sampleBean.setNameList(value);

		request.setAttribute("sampleBean", sampleBean);

		Cookie cookie = new Cookie("cookieName", "cookieeeeeeee!!!");
	    response.addCookie(cookie);


		return mapping.findForward("success");
	}


}
