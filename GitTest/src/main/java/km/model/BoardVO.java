package km.model;

public class BoardVO {

	private String title;
	private String POST_CONTENTS;
	private String postType;
	private String imgfile;
	private String m_fileFullPath;
	
	
	public BoardVO(String title, String POST_CONTENTS,String postType,String imgfile,String m_fileFullPath) {

		this.title = title;
		this.POST_CONTENTS = POST_CONTENTS;
		this.postType = postType;
		this.imgfile = imgfile;
		this.m_fileFullPath = m_fileFullPath;
	}


	public BoardVO() {
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getPOST_CONTENTS() {
		return POST_CONTENTS;
	}


	public void setPOST_CONTENTS(String pOST_CONTENTS) {
		POST_CONTENTS = pOST_CONTENTS;
	}


	public String getPostType() {
		return postType;
	}


	public void setPostType(String postType) {
		this.postType = postType;
	}


	public String getImgfile() {
		return imgfile;
	}


	public void setImgfile(String imgfile) {
		this.imgfile = imgfile;
	}


	public String getM_fileFullPath() {
		return m_fileFullPath;
	}


	public void setM_fileFullPath(String m_fileFullPath) {
		this.m_fileFullPath = m_fileFullPath;
	}
	
	

	
}
