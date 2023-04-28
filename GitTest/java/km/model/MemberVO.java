package km.model;

public class MemberVO {
	private String email;
	private String pw;
	private String birthday;
	private String nickname;
	private String dog_name;
	private String dog_age;
	private String dog_breed;
	
	// 필드를 전부 초기화시키는 생성자
	public MemberVO(String email, String pw, String birthday, String nickname, String dog_name, String dog_age,
			String dog_breed) {
		super();
		this.email = email;
		this.pw = pw;
		this.birthday = birthday;
		this.nickname = nickname;
		this.dog_name = dog_name;
		this.dog_age = dog_age;
		this.dog_breed = dog_breed;
	}
	
	//기본생성자
	public MemberVO() {
		
	}
	
	// getter, setter method
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
	
	
	
	
	
	
	
	
	
}
