package km.model;


public class PostVO {
	
	private int post_id;
	private String title;
	private String post_contents;
	private String kategory;
	private String posting_date;
	private String mody_date;
	private int img_id;
	private String orgin_img_name;
	private String save_img_name;
	private String img_root;
	private String img_size;
	private String img_type;
	private String img_upload_date;
	private int like_id;
	private String like_date;
	private int user_id;
	
	public PostVO(int post_id, String title, String post_contents, String kategory, String posting_date,
			String mody_date, int img_id, String orgin_img_name, String save_img_name, String img_root,
			String img_size, String img_type, String img_upload_date, int like_id, String like_date,
			int user_id) {
		this.post_id = post_id;
		this.title = title;
		this.post_contents = post_contents;
		this.kategory = kategory;
		this.posting_date = posting_date;
		this.mody_date = mody_date;
		this.img_id = img_id;
		this.orgin_img_name = orgin_img_name;
		this.save_img_name = save_img_name;
		this.img_root = img_root;
		this.img_size = img_size;
		this.img_type = img_type;
		this.img_upload_date = img_upload_date;
		this.like_id = like_id;
		this.like_date = like_date;
		this.user_id = user_id;
	}

	public PostVO() {}

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

	public int getImg_id() {
		return img_id;
	}

	public void setImg_id(int img_id) {
		this.img_id = img_id;
	}

	public String getOrgin_img_name() {
		return orgin_img_name;
	}

	public void setOrgin_img_name(String orgin_img_name) {
		this.orgin_img_name = orgin_img_name;
	}

	public String getSave_img_name() {
		return save_img_name;
	}

	public void setSave_img_name(String save_img_name) {
		this.save_img_name = save_img_name;
	}

	public String getImg_root() {
		return img_root;
	}

	public void setImg_root(String img_root) {
		this.img_root = img_root;
	}

	public String getImg_size() {
		return img_size;
	}

	public void setImg_size(String img_size) {
		this.img_size = img_size;
	}

	public String getImg_type() {
		return img_type;
	}

	public void setImg_type(String img_type) {
		this.img_type = img_type;
	}

	public String getImg_upload_date() {
		return img_upload_date;
	}

	public void setImg_upload_date(String img_upload_date) {
		this.img_upload_date = img_upload_date;
	}

	public int getLike_id() {
		return like_id;
	}

	public void setLike_id(int like_id) {
		this.like_id = like_id;
	}

	public String getLike_date() {
		return like_date;
	}

	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	


}