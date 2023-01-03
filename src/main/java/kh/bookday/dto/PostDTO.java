package kh.bookday.dto;

import java.sql.Timestamp;

public class PostDTO {
	
	private int p_seq;
	private String p_writer_id;
	private String sysprofname;
	private String b_isbn;
	private String b_img_url;
	private String b_title;
	private String b_writer;
	private String b_genre;
	private String b_publisher;
	private String b_publication_date;
	private String dyst_read;
	private String dyfn_read;
	private String p_writer_nn;
	private Timestamp p_write_date;
	private String p_title;
	private String p_content;
	private int p_view_count;
	private int p_comment_count;
	private int p_like_count;
	
	
	public PostDTO() {
		super();
	}

	public PostDTO(int p_seq, String p_writer_id, String sysprofname,String b_isbn, String b_img_url, String b_title, String b_writer,
			String b_genre, String b_publisher, String b_publication_date, String dyst_read, String dyfn_read,
			String p_writer_nn, Timestamp p_write_date, String p_title, String p_content, int p_view_count,
			int p_comment_count, int p_like_count) {
		this.p_seq = p_seq;
		this.p_writer_id = p_writer_id;
		this.sysprofname=sysprofname;
		this.b_isbn = b_isbn;
		this.b_img_url = b_img_url;
		this.b_title = b_title;
		this.b_writer = b_writer;
		this.b_genre = b_genre;
		this.b_publisher = b_publisher;
		this.b_publication_date = b_publication_date;
		this.dyst_read = dyst_read;
		this.dyfn_read = dyfn_read;
		this.p_writer_nn = p_writer_nn;
		this.p_write_date = p_write_date;
		this.p_title = p_title;
		this.p_content = p_content;
		this.p_view_count = p_view_count;
		this.p_comment_count = p_comment_count;
		this.p_like_count = p_like_count;
	}
	
	
	public int getP_seq() {
		return p_seq;
	}
	public void setP_seq(int p_seq) {
		this.p_seq = p_seq;
	}
	public String getP_writer_id() {
		return p_writer_id;
	}
	public void setP_writer_id(String p_writer_id) {
		this.p_writer_id = p_writer_id;
	}
	
	public String getSysprofname() {
		return sysprofname;
	}
	public void setSysprofname(String sysprofname) {
		this.sysprofname = sysprofname;
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
	public String getB_publisher() {
		return b_publisher;
	}
	public void setB_publisher(String b_publisher) {
		this.b_publisher = b_publisher;
	}
	public String getB_publication_date() {
		return b_publication_date;
	}
	public void setB_publication_date(String b_publication_date) {
		this.b_publication_date = b_publication_date;
	}
	public String getDyst_read() {
		return dyst_read;
	}
	public void setDyst_read(String dyst_read) {
		this.dyst_read = dyst_read;
	}
	public String getDyfn_read() {
		return dyfn_read;
	}
	public void setDyfn_read(String dyfn_read) {
		this.dyfn_read = dyfn_read;
	}
	public String getP_writer_nn() {
		return p_writer_nn;
	}
	public void setP_writer_nn(String p_writer_nn) {
		this.p_writer_nn = p_writer_nn;
	}
	public Timestamp getP_write_date() {
		return p_write_date;
	}
	public void setP_write_date(Timestamp p_write_date) {
		this.p_write_date = p_write_date;
	}
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_view_count() {
		return p_view_count;
	}
	public void setP_view_count(int p_view_count) {
		this.p_view_count = p_view_count;
	}
	public int getP_comment_count() {
		return p_comment_count;
	}
	public void setP_comment_count(int p_comment_count) {
		this.p_comment_count = p_comment_count;
	}
	public int getP_like_count() {
		return p_like_count;
	}
	public void setP_like_count(int p_like_count) {
		this.p_like_count = p_like_count;
	}
	
}
