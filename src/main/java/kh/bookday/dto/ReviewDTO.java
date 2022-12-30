package kh.bookday.dto;

import java.sql.Timestamp;

public class ReviewDTO {
	
	private int rv_seq;
	private String rv_writer_id;
	private String rv_writer_nn;
	private Timestamp rv_write_date;
	private String rv_content;
	private String b_isbn;
	private int r_count_like;
	
	
	public ReviewDTO() {
		super();
	}
	
	public ReviewDTO(int rv_seq, String rv_writer_id, String rv_writer_nn, Timestamp rv_write_date, String rv_content,
			String b_isbn) {
		this.rv_seq = rv_seq;
		this.rv_writer_id = rv_writer_id;
		this.rv_writer_nn = rv_writer_nn;
		this.rv_write_date = rv_write_date;
		this.rv_content = rv_content;
		this.b_isbn = b_isbn;
	
	}
	
	public int getRv_seq() {
		return rv_seq;
	}
	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
	}
	public String getRv_writer_id() {
		return rv_writer_id;
	}
	public void setRv_writer_id(String rv_writer_id) {
		this.rv_writer_id = rv_writer_id;
	}
	public String getRv_writer_nn() {
		return rv_writer_nn;
	}
	public void setRv_writer_nn(String rv_writer_nn) {
		this.rv_writer_nn = rv_writer_nn;
	}
	public Timestamp getRv_write_date() {
		return rv_write_date;
	}
	public void setRv_write_date(Timestamp rv_write_date) {
		this.rv_write_date = rv_write_date;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}
	public String getB_isbn() {
		return b_isbn;
	}
	public void setB_isbn(String b_isbn) {
		this.b_isbn = b_isbn;
	}

	public int getR_count_like() {
		return r_count_like;
	}

	public void setR_count_like(int r_count_like) {
		this.r_count_like = r_count_like;
	}
	
	
}
