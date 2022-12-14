package kh.bookday.dto;

import java.sql.Timestamp;

public class WishlistDTO {
	
	private int wishlist_seq;
	private String id;
	private String b_isbn;
	private String b_img_url;
	private String b_title;
	private String b_writer;
	private String b_genre;
	private Timestamp w_add_date;
	
	
	public WishlistDTO() {
		super();
	}
	public WishlistDTO(int wishlist_seq, String id, String b_isbn, String b_img_url, String b_title, String b_writer,
			String b_genre, Timestamp w_add_date) {
		this.wishlist_seq = wishlist_seq;
		this.id = id;
		this.b_isbn = b_isbn;
		this.b_img_url = b_img_url;
		this.b_title = b_title;
		this.b_writer = b_writer;
		this.b_genre = b_genre;
		this.w_add_date = w_add_date;
	}
	
	
	public int getWishlist_seq() {
		return wishlist_seq;
	}
	public void setWishlist_seq(int wishlist_seq) {
		this.wishlist_seq = wishlist_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getB_isbn() {
		return b_isbn;
	}
	public void setB_isbn(String b_isbn) {
		this.b_isbn = b_isbn;
	}
	public String getB_img_url() {
		return b_img_url;
	}
	public void setB_img_url(String b_img_url) {
		this.b_img_url = b_img_url;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public String getB_genre() {
		return b_genre;
	}
	public void setB_genre(String b_genre) {
		this.b_genre = b_genre;
	}
	public Timestamp getW_add_date() {
		return w_add_date;
	}
	public void setW_add_date(Timestamp w_add_date) {
		this.w_add_date = w_add_date;
	}
	
}
