package km.model;

public class BoardVO {

	private int post_id;
	private String title;
	private String post_contents;
	private String user_id;
	
	public BoardVO(int post_id, String title, String post_contents, String user_id) {
		super();
		this.post_id = post_id;
		this.title = title;
		this.post_contents = post_contents;
		this.user_id = user_id;
	}
	
	public BoardVO() {
		
	}

	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPost_contents() {
		return post_contents;
	}
	public void setPost_contents(String post_contents) {
		this.post_contents = post_contents;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
}
