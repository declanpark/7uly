package org.july.www.com.vo;

public class UserVO {
	private String usid;
	private String password;
	private String usrNm;
	private String age;
	private String moblphonNo;
	private String email;
	private String bassAdres;
	private String detailAdres;
	private String zip;
	private String regId;
	private String regDt;
	private String updtId;
	private String updtDt;
	public String getUsid() {
		return usid;
	}
	public void setUsid(String usid) {
		this.usid = usid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsrNm() {
		return usrNm;
	}
	public void setUsrNm(String usrNm) {
		this.usrNm = usrNm;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getMoblphonNo() {
		return moblphonNo;
	}
	public void setMoblphonNo(String moblphonNo) {
		this.moblphonNo = moblphonNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBassAdres() {
		return bassAdres;
	}
	public void setBassAdres(String bassAdres) {
		this.bassAdres = bassAdres;
	}
	public String getDetailAdres() {
		return detailAdres;
	}
	public void setDetailAdres(String detailAdres) {
		this.detailAdres = detailAdres;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getUpdtId() {
		return updtId;
	}
	public void setUpdtId(String updtId) {
		this.updtId = updtId;
	}
	public String getUpdtDt() {
		return updtDt;
	}
	public void setUpdtDt(String updtDt) {
		this.updtDt = updtDt;
	}
	
	@Override
	public String toString() {
		
		
		return "usid=" + usid + 
			   ", password=" + password +
			   ", usrNm=" + usrNm +
			   ", age=" + age +
			   ", moblphonNo=" + moblphonNo +
			   ", email=" + email +
			   ", bassAdres=" + bassAdres +
			   ", detailAdres=" + detailAdres +
			   ", zip=" + zip +
			   ", regId=" + regId +
			   ", regDt=" + regDt +
			   ", updtId=" + updtId +
			   ", updtDt=" + updtDt;
		      
	}
	
	
}

