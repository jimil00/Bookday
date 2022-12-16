package kh.bookday.dto;

import java.sql.Timestamp;

public class BookmarkDTO {
	
	private int bm_seq;
	private String bm_writer_id;
	private String b_isbn;
	private String b_img_url;
	private String b_title;
	private String b_writer;
	private String b_genre;
	private Timestamp bm_write_date;
	private String bm_content;
	
	
	public BookmarkDTO() {
		super();
	}
	public BookmarkDTO(int bm_seq, String bm_writer_id, String b_isbn, String b_img_url, String b_title,
			String b_writer, String b_genre, Timestamp bm_write_date, String bm_content) {
		this.bm_seq = bm_seq;
		this.bm_writer_id = bm_writer_id;
		this.b_isbn = b_isbn;
		this.b_img_url = b_img_url;
		this.b_title = b_title;
		this.b_writer = b_writer;
		this.b_genre = b_genre;
		this.bm_write_date = bm_write_date;
		this.bm_content = bm_content;
	}
	
	
	public int getBm_seq() {
		return bm_seq;
	}
	public void setBm_seq(int bm_seq) {
		this.bm_seq = bm_seq;
	}
	public String getBm_writer_id() {
		return bm_writer_id;
	}
	public void setBm_writer_id(String bm_writer_id) {
		this.bm_writer_id = bm_writer_id;
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
	public Timestamp getBm_write_date() {
		return bm_write_date;
	}
	public void setBm_write_date(Timestamp bm_write_date) {
		this.bm_write_date = bm_write_date;
	}
	public String getBm_content() {
		return bm_content;
	}
	public void setBm_content(String bm_content) {
		this.bm_content = bm_content;
	}
	
}
