package kh.bookday.dto;

public class PostLikeDTO {
	
	private int pl_seq;
	private String id;
	private int p_seq;
	private String p_writer_id;
	private String b_isbn;
	
	
	public PostLikeDTO() {
		super();
	}
	public PostLikeDTO(int pl_seq, String id, int p_seq, String p_writer_id, String b_isbn) {
		super();
		this.pl_seq = pl_seq;
		this.id = id;
		this.p_seq = p_seq;
		this.p_writer_id = p_writer_id;
		this.b_isbn = b_isbn;
	}
	
	
	public int getPl_seq() {
		return pl_seq;
	}
	public void setPl_seq(int pl_seq) {
		this.pl_seq = pl_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getB_isbn() {
		return b_isbn;
	}
	public void setB_isbn(String b_isbn) {
		this.b_isbn = b_isbn;
	}

}
