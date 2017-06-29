package bl;

import java.util.ArrayList;
import java.util.List;

import bean.Book;

public class BookBL {

	public static Book[] searchByKeyword(Book[] books, String keyword) {

		List<Book> bookList = new ArrayList<Book>();
		for (int i = 0; i < books.length; i++) {
			if (books[i].getTitle().indexOf(keyword) > -1) {
				bookList.add(books[i]);
			} else if (books[i].getAuthor().indexOf(keyword) > -1) {
				bookList.add(books[i]);
			} else if (books[i].getPublisher().indexOf(keyword) > -1) {
				bookList.add(books[i]);
			}
		}
		return (Book[]) bookList.toArray(new Book[bookList.size()]);
	}

	// 指定した書籍番号を持つBook配列を取得
	public static Book[] searchByIds(Book[] books, String[] ids) {
		List<Book> list = new ArrayList<Book>();
		for (int i = 0; i < books.length; i++) {
			for (int j = 0; j < ids.length; j++) {
				if (books[i].getId().equals(ids[j])) {
					list.add(books[i]);
					break;
				}
			}
		}
		return (Book[]) list.toArray(new Book[list.size()]);
	}
}
