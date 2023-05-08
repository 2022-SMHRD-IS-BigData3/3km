package km.model;

import java.util.List;

public class DogVO {
	private int dog_id;
	private String dog_name;
	private String dog_age;
	private String dog_breed;
	private String dog_img;
	private int user_id;
	private List<DogVO> DogList;
	
	
	public DogVO() {}
	public DogVO(String dog_name, String dog_age, String dog_breed,String dog_img, int dog_id, int user_id) {
		super();
		this.dog_name = dog_name;
		this.dog_age = dog_age;
		this.dog_breed = dog_breed;
		this.dog_img = dog_img;
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
	public String getDog_img() {
		return dog_img;
	}
	public void setDog_img(String dog_img) {
		this.dog_img = dog_img;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public List<DogVO> getDogList() {
		return DogList;
	}
	public void setDogList(List<DogVO> dogList) {
		DogList = dogList;
	}
	
}
	
