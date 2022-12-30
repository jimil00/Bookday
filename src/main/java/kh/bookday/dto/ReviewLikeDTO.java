package kh.bookday.dto;

public class ReviewLikeDTO {
	
	private int rvl_seq;
	private int rv_seq;
	private String id;
	private String b_isbn;
	
	
	public ReviewLikeDTO() {
		super();
	}
	
	public ReviewLikeDTO(int rvl_seq, int rv_seq, String id, String b_isbn) {
		this.rvl_seq = rvl_seq;
		this.rv_seq = rv_seq;
		this.id = id;
		this.b_isbn = b_isbn;
	}
	
	public int getRvl_seq() {
		return rvl_seq;
	}
	public void setRvl_seq(int rvl_seq) {
		this.rvl_seq = rvl_seq;
	}
	public int getRv_seq() {
		return rv_seq;
	}
	public void setRv_seq(int rv_seq) {
		this.rv_seq = rv_seq;
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

	
}
