package bean;

/**
 * 注文アイテムを表すBeanです
 */
public class OrderItem {

	/** 注文書籍データ */
    private Book book;
    /** 注文個数 */
    private int num;

	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
}
