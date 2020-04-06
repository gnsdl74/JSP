package edu.web.homework;

// 서블릿(.java)파일에서 new 연산자로 객체 생성
public class ContactVO {
	private String name;
	private String phone;
	private String email;
	
	public ContactVO(String name, String phone, String email) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
} // end ContactVO