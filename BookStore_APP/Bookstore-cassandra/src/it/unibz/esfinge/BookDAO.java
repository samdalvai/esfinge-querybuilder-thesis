package it.unibz.esfinge;

import it.unibz.Book;
import net.sf.esfinge.querybuilder.Repository;

import java.util.List;

public interface BookDAO extends Repository<Book> {

	List<Book> getBookOrderById();

}
