package bean;

import java.util.Arrays;

public class DemoVO {
	
	private String id;
	private String name;
	private String address;
	private String[] hobbies;
	
	@Override
	public String toString() {
		return String.format("DemoVO [id=%s, name=%s, address=%s, hobbies=%s]", id, name, address,
				Arrays.toString(hobbies));
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String[] getHobbies() {
		return hobbies;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}
	
}