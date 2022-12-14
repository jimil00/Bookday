package kh.bookday.dto;

public class BookDTO {

	private String b_isbn;
	private int b_ranking;
	private String b_title;
	private String b_writer;
	private String b_genre;
	private String b_publisher;
	private String b_publication_date;
	private String b_img_url;
	private String b_description;

	
	public BookDTO() {
		super();
	}
	public BookDTO(String b_isbn, int b_ranking, String b_title, String b_writer, String b_genre, String b_publisher,
			String b_publication_date, String b_img_url, String b_description) {
		this.b_isbn = b_isbn;
		this.b_ranking = b_ranking;
		this.b_title = b_title;
		this.b_writer = b_writer;
		this.b_genre = b_genre;
		this.b_publisher = b_publisher;
		this.b_publication_date = b_publication_date;
		this.b_img_url = b_img_url;
		this.b_description = b_description;
	}
	
	
	public String getB_isbn() {
		return b_isbn;
	}
	public void setB_isbn(String b_isbn) {
		this.b_isbn = b_isbn;
	}
	public int getB_ranking() {
		return b_ranking;
	}
	public void setB_ranking(int b_ranking) {
		this.b_ranking = b_ranking;
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
	public String getB_img_url() {
		return b_img_url;
	}
	public void setB_img_url(String b_img_url) {
		this.b_img_url = b_img_url;
	}
	public String getB_description() {
		return b_description;
	}
	public void setB_description(String b_description) {
		this.b_description = b_description;
	}

}
