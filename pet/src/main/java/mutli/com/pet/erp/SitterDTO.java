package mutli.com.pet.erp;

import java.sql.Date;

public class SitterDTO {
	private String code;
	private String sitter_id;
	private String sitter_name;
	private String sitter_pass;
	private String sitter_code;
	private String sitter_gender;
	private String sitter_email;
	private String sitter_phone;
	private String sitter_addr1;
	private String sitter_addr2;
	private Date sitter_startdate;
	private Date sitter_enddate;
	private String sitter_status;
	private Date sitter_birthdate;
	private String service_area;
	private String sitter_info;
	private String valid;
	private String sitter_career;
	private String sitter_certificate;
	private String sitter_rate;
	
	public SitterDTO() {
		
	}
	
	@Override
	public String toString() {
		return "SitterDTO [code=" + code + ", sitter_id=" + sitter_id + ", sitter_name=" + sitter_name
				+ ", sitter_pass=" + sitter_pass + ", sitter_code=" + sitter_code + ", sitter_gender=" + sitter_gender
				+ ", sitter_email=" + sitter_email + ", sitter_phone=" + sitter_phone + ", sitter_addr1=" + sitter_addr1
				+ ", sitter_addr2=" + sitter_addr2 + ", sitter_startdate=" + sitter_startdate + ", sitter_enddate="
				+ sitter_enddate + ", sitter_status=" + sitter_status + ", sitter_birthdate=" + sitter_birthdate
				+ ", service_area=" + service_area + ", sitter_info=" + sitter_info + ", valid=" + valid
				+ ", sitter_career=" + sitter_career + ", sitter_certificate=" + sitter_certificate + ", sitter_rate="
				+ sitter_rate + "]";
	}

	public SitterDTO(String code, String sitter_id, String sitter_name, String sitter_pass, String sitter_code,
			String sitter_gender, String sitter_email, String sitter_phone, String sitter_addr1, String sitter_addr2,
			Date sitter_startdate, Date sitter_enddate, String sitter_status, Date sitter_birthdate,
			String service_area, String sitter_info, String valid, String sitter_career, String sitter_certificate,
			String sitter_rate) {
		super();
		this.code = code;
		this.sitter_id = sitter_id;
		this.sitter_name = sitter_name;
		this.sitter_pass = sitter_pass;
		this.sitter_code = sitter_code;
		this.sitter_gender = sitter_gender;
		this.sitter_email = sitter_email;
		this.sitter_phone = sitter_phone;
		this.sitter_addr1 = sitter_addr1;
		this.sitter_addr2 = sitter_addr2;
		this.sitter_startdate = sitter_startdate;
		this.sitter_enddate = sitter_enddate;
		this.sitter_status = sitter_status;
		this.sitter_birthdate = sitter_birthdate;
		this.service_area = service_area;
		this.sitter_info = sitter_info;
		this.valid = valid;
		this.sitter_career = sitter_career;
		this.sitter_certificate = sitter_certificate;
		this.sitter_rate = sitter_rate;
	}


	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getSitter_rate() {
		return sitter_rate;
	}


	public void setSitter_rate(String sitter_rate) {
		this.sitter_rate = sitter_rate;
	}


	public String getSitter_pass() {
		return sitter_pass;
	}

	public void setSitter_pass(String sitter_pass) {
		this.sitter_pass = sitter_pass;
	}

	public String getSitter_id() {
		return sitter_id;
	}

	public void setSitter_id(String sitter_id) {
		this.sitter_id = sitter_id;
	}

	public String getSitter_name() {
		return sitter_name;
	}

	public void setSitter_name(String sitter_name) {
		this.sitter_name = sitter_name;
	}

	public String getSitter_code() {
		return sitter_code;
	}

	public void setSitter_code(String sitter_code) {
		this.sitter_code = sitter_code;
	}

	public String getSitter_gender() {
		return sitter_gender;
	}

	public void setSitter_gender(String sitter_gender) {
		this.sitter_gender = sitter_gender;
	}

	public String getSitter_email() {
		return sitter_email;
	}

	public void setSitter_email(String sitter_email) {
		this.sitter_email = sitter_email;
	}

	public String getSitter_phone() {
		return sitter_phone;
	}

	public void setSitter_phone(String sitter_phone) {
		this.sitter_phone = sitter_phone;
	}

	public String getSitter_addr1() {
		return sitter_addr1;
	}

	public void setSitter_addr1(String sitter_addr1) {
		this.sitter_addr1 = sitter_addr1;
	}

	public String getSitter_addr2() {
		return sitter_addr2;
	}

	public void setSitter_addr2(String sitter_addr2) {
		this.sitter_addr2 = sitter_addr2;
	}

	public Date getSitter_startdate() {
		return sitter_startdate;
	}

	public void setSitter_startdate(Date sitter_startdate) {
		this.sitter_startdate = sitter_startdate;
	}

	public Date getSitter_enddate() {
		return sitter_enddate;
	}

	public void setSitter_enddate(Date sitter_enddate) {
		this.sitter_enddate = sitter_enddate;
	}

	public String getSitter_status() {
		return sitter_status;
	}

	public void setSitter_status(String sitter_status) {
		this.sitter_status = sitter_status;
	}

	public Date getSitter_birthdate() {
		return sitter_birthdate;
	}

	public void setSitter_birthdate(Date sitter_birthdate) {
		this.sitter_birthdate = sitter_birthdate;
	}

	public String getService_area() {
		return service_area;
	}

	public void setService_area(String service_area) {
		this.service_area = service_area;
	}

	public String getSitter_info() {
		return sitter_info;
	}

	public void setSitter_info(String sitter_info) {
		this.sitter_info = sitter_info;
	}

	public String getValid() {
		return valid;
	}

	public void setValid(String valid) {
		this.valid = valid;
	}

	public String getSitter_career() {
		return sitter_career;
	}

	public void setSitter_career(String sitter_career) {
		this.sitter_career = sitter_career;
	}

	public String getSitter_certificate() {
		return sitter_certificate;
	}

	public void setSitter_certificate(String sitter_certificate) {
		this.sitter_certificate = sitter_certificate;
	}
	
	
}
