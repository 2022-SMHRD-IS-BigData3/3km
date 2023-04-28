package km.model;

public class PostVO {
	private String title;
	private String post_contents;
	private String kate_big;
	private String kate_small;
	private int posting_date;
	private int mody_date;
	private String location_tag;
	private int user_id;


public PostVO(String title, String post_contents, String kate_big, String kate_small, int posting_date,
			int mody_date, String location_tag, int user_id) {
		super();
		this.title = title;
		this.post_contents = post_contents;
		this.kate_big = kate_big;
		this.kate_small = kate_small;
		this.posting_date = posting_date;
		this.mody_date = mody_date;
		this.location_tag = location_tag;
		this.user_id = user_id;
	}

public PostVO() {
	
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

public String getKate_big() {
	return kate_big;
}

public void setKate_big(String kate_big) {
	this.kate_big = kate_big;
}

public String getKate_small() {
	return kate_small;
}

public void setKate_small(String kate_small) {
	this.kate_small = kate_small;
}

public int getPosting_date() {
	return posting_date;
}

public void setPosting_date(int posting_date) {
	this.posting_date = posting_date;
}

public int getMody_date() {
	return mody_date;
}

public void setMody_date(int mody_date) {
	this.mody_date = mody_date;
}

public String getLocation_tag() {
	return location_tag;
}

public void setLocation_tag(String location_tag) {
	this.location_tag = location_tag;
}

public int getUser_id() {
	return user_id;
}

public void setUser_id(int user_id) {
	this.user_id = user_id;
}








}