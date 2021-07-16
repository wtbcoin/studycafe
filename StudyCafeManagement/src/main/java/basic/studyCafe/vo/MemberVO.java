package basic.studyCafe.vo;

public class MemberVO {
	private String user_id;
	private String user_password;
	private String user_checkpw;
	private String user_name;
	private String user_gender;
	private String user_phone;
	private String user_address;
	private String user_email;
	private String user_birth;


	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public String getUser_password() {
		return user_password;
	}



	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}


	public String getUser_checkpw() {
		return user_checkpw;
	}



	public void setUser_checkpw(String user_checkpw) {
		this.user_checkpw = user_checkpw;
	}


	public String getUser_name() {
		return user_name;
	}



	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}



	public String getUser_gender() {
		return user_gender;
	}



	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}



	public String getUser_phone() {
		return user_phone;
	}



	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}



	public String getUser_address() {
		return user_address;
	}



	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}



	public String getUser_email() {
		return user_email;
	}



	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}



	public String getUser_birth() {
		return user_birth;
	}



	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "MemberVO [user_id=" + user_id + ", user_password=" + user_password +  ", user_name=" + user_name + ", user_gender=" + user_gender +
				", user_phone=" + user_phone + ", user_address=" + user_address + ", user_email=" + user_email + ", user_birth=" + user_birth + "]";
	}
}
