package km.model;

public class UserVO {
	
	private int user_id;
	private String email;
	private String pw;
	private String birthday;
	private String nickname;
	private String introduce;
	private String profil_img;
	private String dog_img1;
	private String dog_img2;
	private String dog_img3;
	
	public UserVO(int user_id, String email, String pw, String birthday, String nickname, String introduce,
			String profil_img, String dog_img1, String dog_img2, String dog_img3) {
		this.user_id = user_id;
		this.email = email;
		this.pw = pw;
		this.birthday = birthday;
		this.nickname = nickname;
		this.introduce = introduce;
		this.profil_img = profil_img;
		this.dog_img1 = dog_img1;
		this.dog_img2 = dog_img2;
		this.dog_img3 = dog_img3;
	}
	
	public UserVO() {}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getProfil_img() {
		return profil_img;
	}

	public void setProfil_img(String profil_img) {
		this.profil_img = profil_img;
	}

	public String getDog_img1() {
		return dog_img1;
	}

	public void setDog_img1(String dog_img1) {
		this.dog_img1 = dog_img1;
	}

	public String getDog_img2() {
		return dog_img2;
	}

	public void setDog_img2(String dog_img2) {
		this.dog_img2 = dog_img2;
	}

	public String getDog_img3() {
		return dog_img3;
	}

	public void setDog_img3(String dog_img3) {
		this.dog_img3 = dog_img3;
	}

}