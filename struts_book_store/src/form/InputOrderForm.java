package form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import bean.Order;

public class InputOrderForm extends ActionForm {

	private int[] nums = null;
	private String customerName = null;
	private String address = null;
	private int payment = Order.COLLECT;

	public int[] getNums() {
		return nums;
	}

	public void setNums(int[] nums) {
		System.out.println("nums="+nums[0]);
		this.nums = nums;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public void reset(ActionMapping mapping, HttpServletRequest request) {
		/*Order order = new OrderManager().getSessionOrder(request.getSession());
		nums = new int[order.getItems().length];*/
	}

	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		boolean nums_error = false;
		for (int i = 0; i < nums.length; i++) {
			if (nums[i] <= 0) {
				nums_error = true;
				break;
			}
		}
		if (nums_error == true) {
			errors.add("invalid_booknum", new ActionMessage("errors.invalid.booknum", "購入数"));
		}
		if (customerName == null || customerName.equals("")) {
			errors.add("empty.name", new ActionMessage("errors.empty", "お客様氏名"));
		}
		if (address == null || address.equals("")) {
			errors.add("empty.address", new ActionMessage("errors.empty", "お届け先住所"));
		}
		return errors;
	}
}
