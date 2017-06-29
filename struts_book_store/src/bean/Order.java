package bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 注文データを表すBeanです
 */
public class Order implements Serializable {

	/** 代金引換 */
	public static int COLLECT = 1;
	/** 郵便振込 */
	public static int TRANSFER = 2;

	/** 支払い方法を定義した配列 */
    public static String[] PAYMENT_STRING = {"代金引換", "郵便振込"};

    /** お客様氏名ID */
    private int id;
    /** お客様氏名 */
    private String customerName;
    /** お届け先住所 */
    private String address;
    /** 支払い方法 */
    private int payment;
    /** 注文金額の合計 */
    private int sum;
    /** 注文時刻 */
    private Date orderDate;
    /** 注文アイテム */
    private OrderItem[] items;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public OrderItem[] getItems() {
		return items;
	}
	public void setItems(OrderItem[] items) {
		this.items = items;
	}

	public String getPaymentString() {
        return PAYMENT_STRING[payment - 1];
    }
}
