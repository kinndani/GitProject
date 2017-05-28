package form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class LoginForm extends ActionForm {

	private String id = "";
	private String password = "";
	private boolean check = false;
	private String[] multi=new String[0];
	private int rad;
	private String[] sel=new String[0];
	private String filePath;
	private String hid;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isCheck() {
		System.out.println("isCheck=" + check);
		return check;
	}

	public void setCheck(boolean check) {
		System.out.println("setCheck=" + check);
		this.check = check;
	}

	public String[] getMulti() {
		for(String getMulti:multi){
			System.out.println("getMulti=" + getMulti);
		}
		return multi;
	}

	public void setMulti(String[] multi) {
		for(String setMulti:multi){
			System.out.println("getMulti=" + setMulti);
		}
		this.multi = multi;
	}

	public int getRad() {
		System.out.println("getRad=" + rad);
		return rad;
	}

	public void setRad(int rad) {
		System.out.println("setRad=" + rad);
		this.rad = rad;
	}

	public String[] getSel() {
		for(String getSel:sel){
			System.out.println("getSel=" + getSel);
		}
		return sel;
	}

	public void setSel(String[] sel) {
		for(String setSel:sel){
			System.out.println("getSel=" + setSel);
		}
		this.sel = sel;
	}

	public String getFilePath() {
		System.out.println("getFilePath=" + filePath);
		return filePath;
	}

	public void setFilePath(String filePath) {
		System.out.println("setFilePath=" + filePath);
		this.filePath = filePath;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

		ActionErrors errors = new ActionErrors();
		if ("".equals(getId())) {
			errors.add("id", new ActionMessage("error.id", "ID"));
		}
		System.out.println("validateチェック");
		return errors;
	}

	public String getHid() {
		System.out.println("getHid=" + hid);
		return hid;
	}

	public void setHid(String hid) {
		System.out.println("setHid=" + hid);
		this.hid = hid;
	}
}
