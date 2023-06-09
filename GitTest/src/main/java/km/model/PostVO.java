package km.model;


public class PostVO {
	
	private int post_id;
	private String title;
	private String post_contents;
	private String kategory;
	private String posting_date;
	private String mody_date;
	private String img_root;
	private int user_id;
	private int like_id;
	private int like_count;
	private int view_count;
	private String like_date;
	
	
	
	public PostVO(int post_id, String title, String post_contents, String kategory, String posting_date,
			String mody_date, int user_id,int like_id,int like_count,int view_count,String like_date,String img_root) {
		this.post_id = post_id;
		this.title = title;
		this.post_contents = post_contents;
		this.kategory = kategory;
		this.posting_date = posting_date;
		this.mody_date = mody_date;
		this.like_id = like_id;
		this.like_count = like_count;
		this.like_count = view_count;
		this.like_date = like_date;
		this.img_root = img_root;
	}
	
	public PostVO() {}

	public String getImg_root() {
		return img_root;
	}

	public void setImg_root(String img_root) {
		this.img_root = img_root;
	}


	public int getPost_id() {
		return post_id;
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

	public String getKategory() {
		return kategory;
	}

	public void setKategory(String kategory) {
		this.kategory = kategory;
	}

	public String getPosting_date() {
		return posting_date;
	}

	public void setPosting_date(String posting_date) {
		this.posting_date = posting_date;
	}

	public String getMody_date() {
		return mody_date;
	}

	public void setMody_date(String mody_date) {
		this.mody_date = mody_date;
	}

	public int getUser_id() {
		return user_id;
	}

	public int getLike_id() {
		return like_id;
	}

	public int getLike_count() {
		return like_count;
	}

	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}

	public String getLike_date() {
		return like_date;
	}

	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}

	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setLike_id(int like_id) {
		this.like_id = like_id;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	
	
}