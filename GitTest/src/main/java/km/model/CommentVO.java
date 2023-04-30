package km.model;

public class CommentVO {
	
	private int comment_id;
	private String comment_content;
	private String comment_date;
	private String comment_mody_date;
	private int user_id;
	private int post_id;
	
	
	public CommentVO(int comment_id, String comment_content, String comment_date, String comment_mody_date, int user_id,
			int post_id) {
		super();
		this.comment_id = comment_id;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
		this.comment_mody_date = comment_mody_date;
		this.user_id = user_id;
		this.post_id = post_id;
	}


	public String getComment_content() {
		return comment_content;
	}


	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}


	public String getComment_date() {
		return comment_date;
	}


	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}


	public String getComment_mody_date() {
		return comment_mody_date;
	}


	public void setComment_mody_date(String comment_mody_date) {
		this.comment_mody_date = comment_mody_date;
	}


	public int getComment_id() {
		return comment_id;
	}


	public int getUser_id() {
		return user_id;
	}


	public int getPost_id() {
		return post_id;
	}
	
	
	
	
	

}
