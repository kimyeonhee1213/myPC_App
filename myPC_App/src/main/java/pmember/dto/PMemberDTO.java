package pmember.dto;

public class PMemberDTO {
	private String userid;
	private String passwd;
	private String name;
	private String email;
	private String zipcode;
	private String address;
	private String address2;
	private String phone;
	private String userole;
	private String regdate;
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUserole() {
		return userole;
	}

	public void setUserole(String userole) {
		this.userole = userole;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "PMemberDTO [" + (userid != null ? "userid=" + userid + ", " : "")
				+ (passwd != null ? "passwd=" + passwd + ", " : "") + (name != null ? "name=" + name + ", " : "")
				+ (email != null ? "email=" + email + ", " : "")
				+ (zipcode != null ? "zipcode=" + zipcode + ", " : "")
				+ (address != null ? "address=" + address + ", " : "")
				+ (address2 != null ? "address2=" + address2 + ", " : "")
				+ (phone != null ? "phone=" + phone + ", " : "") + (userole != null ? "userole=" + userole + ", " : "")
				+ (regdate != null ? "regdate=" + regdate : "") + "]";
	}

	
	
}
