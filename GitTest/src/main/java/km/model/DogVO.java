package km.model;

public class DogVO {
	private String dog_name;
	private String dog_age;
	private String dog_breed;
	private int dog_id;
	
	
	public DogVO() {
	}
	private int user_id;
	public DogVO(String dog_name, String dog_age, String dog_breed, int dog_id, int user_id) {
		super();
		this.dog_name = dog_name;
		this.dog_age = dog_age;
		this.dog_breed = dog_breed;
		this.dog_id = dog_id;
		this.user_id = user_id;
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
	public int getDog_id() {
		return dog_id;
	}
	public void setDog_id(int dog_id) {
		this.dog_id = dog_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
