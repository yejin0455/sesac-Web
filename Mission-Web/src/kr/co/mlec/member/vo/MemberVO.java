package kr.co.mlec.member.vo;

public class MemberVO {

	private String id;
	private String name;
	private String password;
	private String email;
	private String emailId;
	private String emailDo;
	private String tel;
	private String telA;
	private String telB;
	private String telC;
	private String post;
	private String addr;
	private String bAddr;
	private String dAddr;
	private String type;
	private String regDate;

	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberVO(String id, String name, String email, String tel, String post, String addr, String type,
			String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.post = post;
		this.addr = addr;
		this.type = type;
		this.regDate = regDate;
	}

	public MemberVO(String id, String name, String password, String emailId, String emailDo, String telA, String telB,
			String telC, String post, String bAddr, String dAddr, String type, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.emailId = emailId;
		this.emailDo = emailDo;
		this.telA = telA;
		this.telB = telB;
		this.telC = telC;
		this.post = post;
		this.bAddr = bAddr;
		this.dAddr = dAddr;
		this.type = type;
		this.regDate = regDate;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public String getEmailId() {
		return emailId;
	}

	public String getEmailDo() {
		return emailDo;
	}

	public String getTel() {
		return tel;
	}

	public String getTelA() {
		return telA;
	}

	public String getTelB() {
		return telB;
	}

	public String getTelC() {
		return telC;
	}

	public String getPost() {
		return post;
	}

	public String getAddr() {
		return addr;
	}

	public String getbAddr() {
		return bAddr;
	}

	public String getdAddr() {
		return dAddr;
	}

	public String getType() {
		return type;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public void setEmailDo(String emailDo) {
		this.emailDo = emailDo;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public void setTelA(String telA) {
		this.telA = telA;
	}

	public void setTelB(String telB) {
		this.telB = telB;
	}

	public void setTelC(String telC) {
		this.telC = telC;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public void setbAddr(String bAddr) {
		this.bAddr = bAddr;
	}

	public void setdAddr(String dAddr) {
		this.dAddr = dAddr;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", emailId="
				+ emailId + ", emailDo=" + emailDo + ", tel=" + tel + ", telA=" + telA + ", telB=" + telB + ", telC="
				+ telC + ", post=" + post + ", addr=" + addr + ", bAddr=" + bAddr + ", dAddr=" + dAddr + ", type="
				+ type + ", regDate=" + regDate + "]";
	}

}
