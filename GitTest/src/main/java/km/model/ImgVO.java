package km.model;

public class ImgVO {
	
	private int img_id;
	private String orgin_img_name;
	private String save_img_name;
	private String img_root;
	private String img_size;
	private String img_type;
	private String img_upload_date;
	private int post_id;
	

	public ImgVO() {

	}

	public ImgVO(int img_id, String orgin_img_name, String save_img_name, String img_root, String img_size,
			String img_type, String img_upload_date, int post_id) {
		super();
		this.img_id = img_id;
		this.orgin_img_name = orgin_img_name;
		this.save_img_name = save_img_name;
		this.img_root = img_root;
		this.img_size = img_size;
		this.img_type = img_type;
		this.img_upload_date = img_upload_date;
		this.post_id = post_id;
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

	public int getImg_id() {
		return img_id;
	}

	public int getPost_id() {
		return post_id;
	}
	
	
	
}

