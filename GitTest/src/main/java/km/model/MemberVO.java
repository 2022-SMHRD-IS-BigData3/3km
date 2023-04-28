package km.model;


public class MemberVO {
	
	private int user_id;
	private String email;
	private String pw;
	private String birthday;
	private String nickname;
	private String dog_name;
	private String dog_age;
	private String dog_breed;
	private String introduce;
	private String profil_img;
	private String dog_img1;
	private String dog_img2;
	private String dog_img3;
	
	// 필드를 전부 초기화시키는 생성자
	public MemberVO(int user_id,String email, String pw, String birthday, String nickname, String dog_name, String dog_age,
			String dog_breed, String introduce, String profil_img, String dog_img1, String dog_img2, String dog_img3) {
		this.user_id = user_id;
		this.email = email;
		this.pw = pw;
		this.birthday = birthday;
		this.nickname = nickname;
		this.dog_name = dog_name;
		this.dog_age = dog_age;
		this.dog_breed = dog_breed;
		this.introduce = introduce;
		this.profil_img = profil_img;
		this.dog_img1 = dog_img1;
		this.dog_img2 = dog_img2;
		this.dog_img3 = dog_img3;
	}

	//기본생성자
	public MemberVO() {
		
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

	public String getDog_name() {
		return dog_name;
	}

	public void setDog_name(String dog_name) {
		this.dog_name = dog_name;
	}

	public String getDog_age() {
		return dog_age;
	}

	public void setDog_age(String dog_age) {
		this.dog_age = dog_age;
	}

	public String getDog_breed() {
		return dog_breed;
	}

	public void setDog_breed(String dog_breed) {
		this.dog_breed = dog_breed;
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

	public int getUser_id() {
		return user_id;
	}
	
	
	
}
