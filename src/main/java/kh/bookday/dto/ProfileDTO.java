package kh.bookday.dto;

public class ProfileDTO {
	
	private int f_seq;
	private String oriprofname;
	private String sysprofname;
	private String id;
	
	
	public ProfileDTO() {
		super();
	}
	
	public ProfileDTO(int f_seq, String oriprofname, String sysprofname, String id) {
		super();
		this.f_seq = f_seq;
		this.oriprofname = oriprofname;
		this.sysprofname = sysprofname;
		this.id = id;
	}
	
	public int getF_seq() {
		return f_seq;
	}
	public void setF_seq(int f_seq) {
		this.f_seq = f_seq;
	}
	public String getOriprofname() {
		return oriprofname;
	}
	public void setOriprofname(String oriprofname) {
		this.oriprofname = oriprofname;
	}
	public String getSysprofname() {
		return sysprofname;
	}
	public void setSysprofname(String sysprofname) {
		this.sysprofname = sysprofname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	 

}
