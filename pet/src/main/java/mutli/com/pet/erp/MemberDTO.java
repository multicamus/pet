package mutli.com.pet.erp;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MemberDTO {
	private String member_no;
	private String member_name;
	private String member_gender;
	private String member_email;
	private String member_phone;
	private String member_addr1;
	private String member_addr2;
	private MultipartFile member_photo;
	private Date start_date;
	private Date end_date;
	private String member_code;
	private String member_status;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(String member_no, String member_name, String member_gender, String member_email,
			String member_phone, String member_addr1, String member_addr2, MultipartFile member_photo, Date start_date,
			Date end_date, String member_code, String member_status) {
		super();
		this.member_no = member_no;
		this.member_name = member_name;
		this.member_gender = member_gender;
		this.member_email = member_email;
		this.member_phone = member_phone;
		this.member_addr1 = member_addr1;
		this.member_addr2 = member_addr2;
		this.member_photo = member_photo;
		this.start_date = start_date;
		this.end_date = end_date;
		this.member_code = member_code;
		this.member_status = member_status;
	}

	@Override
	public String toString() {
		return "MemberDTO [member_no=" + member_no + ", member_name=" + member_name + ", member_gender=" + member_gender
				+ ", member_email=" + member_email + ", member_phone=" + member_phone + ", member_addr1=" + member_addr1
				+ ", member_addr2=" + member_addr2 + ", member_photo=" + member_photo + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", member_code=" + member_code + ", member_status=" + member_status + "]";
	}

	public String getMember_no() {
		return member_no;
	}

	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_addr1() {
		return member_addr1;
	}

	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}

	public String getMember_addr2() {
		return member_addr2;
	}

	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}

	public MultipartFile getMember_photo() {
		return member_photo;
	}

	public void setMember_photo(MultipartFile member_photo) {
		this.member_photo = member_photo;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getMember_code() {
		return member_code;
	}

	public void setMember_code(String member_code) {
		this.member_code = member_code;
	}

	public String getMember_status() {
		return member_status;
	}

	public void setMember_status(String member_status) {
		this.member_status = member_status;
	}
	
}
