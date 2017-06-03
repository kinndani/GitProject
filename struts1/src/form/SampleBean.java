package form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

public class SampleBean extends ActionForm{

	private int id;
	private String name;
	private Date birthDay;
	private String[] nameList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public String[] getNameList() {
		return nameList;
	}

	public void setNameList(String[] nameList) {
		this.nameList = nameList;
	}
}
