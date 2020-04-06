package edu.web.member;

// Action Tag를 이용하여 객체 생성(jsp파일에서 객체 생성)
public class MemberVO {
	// 주의) useBean용 VO를 생성할 경우, parameter name과 변수명이 같아야함
	private String userId;
	private String password;
	private String email;
	private String phone;
	private String emailAgree; // 라디오 버튼
	private String[] interest; // 체크박스
	private String introduce;
	
	// useBean을 사용할 때는 기본생성자를 반드시 생성
	public MemberVO() {}
	public MemberVO(String userId, String password, String email, String phone, String emailAgree, String[] interest,
			String introduce) {
		this.userId = userId;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.emailAgree = emailAgree;
		this.interest = interest;
		this.introduce = introduce;
	}
	
	// getter/setter
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmailAgree() {
		return emailAgree;
	}
	public void setEmailAgree(String emailAgree) {
		this.emailAgree = emailAgree;
	}
	public String[] getInterest() {
		return interest;
	}
	public void setInterest(String[] interest) {
		this.interest = interest;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	@Override
	public String toString() {
		String str = "아이디 : " + userId + "\n"
					+"비밀번호 : " + password + "\n"
					+"이메일 : " + email + "\n"
					+"핸드폰 : " + phone + "\n"
					+"이메일 수신 동의 여부 : " + emailAgree + "\n"
					+"취미 : " + String.join(", ", interest) + "\n"
					+"소개 내용 : " + introduce;
		return str;
	}
	
} // end MemberVO
