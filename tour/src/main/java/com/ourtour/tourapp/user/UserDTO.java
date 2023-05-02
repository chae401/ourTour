package com.ourtour.tourapp.user;

public class UserDTO {
	private String id;
	private String pass;
	private String name;
	private String birth;
	private String gender;
	private String email; 
	private String usertel;     // �쟾�솕踰덊샇
	private String userimgaddr;    // �쑀���씠誘몄� 二쇱냼
	
	
	public UserDTO(String id, String pass, String name, String birth, String gender, String email, String usertel,
			String userimgaddr) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.email = email;
		this.usertel = usertel;
		this.userimgaddr = userimgaddr;
	}
	@Override
	public String toString() {
		return "UserDTO [userID=" + id + ", pass=" + pass + ", name=" + name + ", birth=" + birth + ", gender="
				+ gender + ", email=" + email + ", usertel=" + usertel + ", userimgaddr=" + userimgaddr + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public String getUserimgaddr() {
		return userimgaddr;
	}
	public void setUserimgaddr(String userimgaddr) {
		this.userimgaddr = userimgaddr;
	}
	
	
}
