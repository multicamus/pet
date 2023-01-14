package mutli.com.pet.erp;

import java.sql.Date;
import java.util.Calendar;

public class SitterDTO {
	private String user_type;
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
//	private String sitter_state;
	private String sitter_status;
	private Date sitter_birthdate;
	private String service_area;
	private String sitter_info;
	private String valid;
	private String sitter_certificate;
	private String sitter_rate;
<<<<<<< HEAD
=======

>>>>>>> refs/remotes/origin/se
	private String small_career;
	private String medium_career;
	private String large_career;
	private String cat_career;
	private String sitter_photo;
	
	
	//추가함 by 최여경
	private int sitter_age;
	private String sitter_shortAddr; //00시 00구 혹은 경기도 00시 00구로 축약시킨 주소 String
	

	
	
	

	
	
	public SitterDTO() {
		
	}

	@Override
	public String toString() {
		return "SitterDTO [user_type=" + user_type + ", sitter_id=" + sitter_id + ", sitter_name=" + sitter_name
				+ ", sitter_pass=" + sitter_pass + ", sitter_code=" + sitter_code + ", sitter_gender=" + sitter_gender
				+ ", sitter_email=" + sitter_email + ", sitter_phone=" + sitter_phone + ", sitter_addr1=" + sitter_addr1
				+ ", sitter_addr2=" + sitter_addr2 + ", sitter_startdate=" + sitter_startdate + ", sitter_enddate="
				+ sitter_enddate + ", sitter_status=" + sitter_status + ", sitter_birthdate=" + sitter_birthdate
				+ ", service_area=" + service_area + ", sitter_info=" + sitter_info + ", valid=" + valid
				+ ", sitter_certificate=" + sitter_certificate + ", sitter_rate="
				+ sitter_rate + ", small_career=" + small_career + ", medium_career=" + medium_career
				+ ", large_career=" + large_career + ", cat_career=" + cat_career + ", sitter_photo=" + sitter_photo
				+ ", sitter_age=" + sitter_age + ", sitter_shortAddr=" + sitter_shortAddr +"]";
	}

	public SitterDTO(String user_type, String sitter_id, String sitter_name, String sitter_pass, String sitter_code,
			String sitter_gender, String sitter_email, String sitter_phone, String sitter_addr1, String sitter_addr2,
			Date sitter_startdate, Date sitter_enddate, String sitter_status, Date sitter_birthdate,
			String service_area, String sitter_info, String valid, String sitter_career, String sitter_certificate,
			String sitter_rate, String small_career, String medium_career, String large_career, String cat_career,
			String sitter_photo, int sitter_age, String sitter_shortAddr) {
		super();
		this.user_type = user_type;
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
		this.sitter_certificate = sitter_certificate;
		this.sitter_rate = sitter_rate;
		this.small_career = small_career;
		this.medium_career = medium_career;
		this.large_career = large_career;
		this.cat_career = cat_career;
		this.sitter_photo = sitter_photo;
		this.sitter_age = sitter_age;
		this.sitter_shortAddr = sitter_shortAddr;
	}



	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
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

	public String getSitter_pass() {
		return sitter_pass;
	}

	public void setSitter_pass(String sitter_pass) {
		this.sitter_pass = sitter_pass;
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


	public String getSitter_certificate() {
		return sitter_certificate;
	}

	public void setSitter_certificate(String sitter_certificate) {
		this.sitter_certificate = sitter_certificate;
	}

	public String getSitter_rate() {
		return sitter_rate;
	}

	public void setSitter_rate(String sitter_rate) {
		this.sitter_rate = sitter_rate;
	}

	public String getSmall_career() {
		return small_career;
	}

	public void setSmall_career(String small_career) {
		this.small_career = small_career;
	}

	public String getMedium_career() {
		return medium_career;
	}

	public void setMedium_career(String medium_career) {
		this.medium_career = medium_career;
	}

	public String getLarge_career() {
		return large_career;
	}

	public void setLarge_career(String large_career) {
		this.large_career = large_career;
	}

	public String getCat_career() {
		return cat_career;
	}

	public void setCat_career(String cat_career) {
		this.cat_career = cat_career;
	}

	public String getSitter_photo() {
		return sitter_photo;
	}

	public void setSitter_photo(String sitter_photo) {
		this.sitter_photo = sitter_photo;
	}
	
	public int getSitter_age() {
		return sitter_age;
	}

	public void setSitter_age(int sitter_age) {
		 Calendar cal = Calendar.getInstance();
	        
         int currentYear  = cal.get(Calendar.YEAR);
         int currentMonth = cal.get(Calendar.MONTH) + 1;
         int currentDay   = cal.get(Calendar.DAY_OF_MONTH);
         
         System.out.println(currentYear);
         
         cal.setTime(getSitter_birthdate());
         
         
         
         int birthYear  = cal.get(Calendar.YEAR);
         int birthMonth  = cal.get(Calendar.MONTH);
         int birthDay   = cal.get(Calendar.DAY_OF_MONTH);
         System.out.println(birthYear);
         // 만 나이 구하기 2022-1995=27 (현재년-태어난년)
         int age = currentYear - birthYear;
         // 만약 생일이 지나지 않았으면 -1
         if (birthMonth * 100 + birthDay > currentMonth * 100 + currentDay) { 
        	 // 5월 26일 생은 526
             // 현재날짜 5월 25일은 525
             // 두 수를 비교 했을 때 생일이 더 클 경우 생일이 지나지 않은 것이다.
             age--;
         }    
        
		this.sitter_age = age;
	}

	public String getSitter_shortAddr() {
		return sitter_shortAddr;
	}

	public void setSitter_shortAddr(String sitter_shortAddr) {
		String newAddr=getSitter_addr1();
		String shortAddr; //최종 간략주소를 넣을 변수
		System.out.println(newAddr);
		
		if(newAddr.contains("광역시")) {//기존 주소가 광역시를 포함하고 있으면
			newAddr =newAddr.replace("광역시", "시");
			System.out.println(newAddr);
			String[] splitAddr = newAddr.split(" "); //띄어쓰기 기준으로 split
			shortAddr = splitAddr[0] + " "+ splitAddr[1]; //처음의 시와 구만 뽑아서 새 주소를 만든다.
		}else if(newAddr.contains("특별시")){//기존 주소가 특별시를 포함하고 있으면
			newAddr = newAddr.replace("특별시", "시");
			System.out.println(newAddr);
			String[] splitAddr = newAddr.split(" "); //띄어쓰기 기준으로 split
			shortAddr = splitAddr[0] + " "+ splitAddr[1]; //처음의 시와 구만 뽑아서 새 주소를 만든다.
		}else {
			System.out.println(newAddr);
			String[] splitAddr = newAddr.split(" "); //띄어쓰기 기준으로 split
				if(splitAddr[2].charAt(splitAddr[2].length()-1) != '구') { //경기도 00시 00구가 아니면 
					shortAddr = splitAddr[0] + " "+ splitAddr[1]; //경기도 00시
				}else {// 경기도 00시 00구면 경기도 00시 00구
				shortAddr = splitAddr[0] + " "+ splitAddr[1]+" "+ splitAddr[2]; //처음의 도와 시와 구만 뽑아서 새 주소를 만든다.
				}
			}
		this.sitter_shortAddr = shortAddr;
	}

	
	
}
