package mutli.com.pet.review;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ReviewDTO {
	private String review_no;
	private String member_id;
	private Date write_date_rv;
	private Date modify_date_rv;
	private String review;
	private String resv_no;
	private List<MultipartFile> review_file;
	private String review_rate;
	
	
	public ReviewDTO() {
		super();
	}

	public ReviewDTO(String review_no, String member_id, Date write_date_rv, Date modify_date_rv, String review,
			String resv_no, List<MultipartFile> review_file, String review_rate) {
		super();
		this.review_no = review_no;
		this.member_id = member_id;
		this.write_date_rv = write_date_rv;
		this.modify_date_rv = modify_date_rv;
		this.review = review;
		this.resv_no = resv_no;
		this.review_file = review_file;
		this.review_rate = review_rate;
	}

	@Override
	public String toString() {
		return "ReviewDTO [review_no=" + review_no + ", member_id=" + member_id + ", write_date_rv=" + write_date_rv
				+ ", modify_date_rv=" + modify_date_rv + ", review=" + review + ", resv_no=" + resv_no
				+ ", review_file=" + review_file + ", review_rate=" + review_rate + "]";
	}


	
	
	public List<MultipartFile> getReview_file() {
		return review_file;
	}

	public void setReview_file(List<MultipartFile> review_file) {
		this.review_file = review_file;
	}

	public String getReview_no() {
		return review_no;
	}

	public void setReview_no(String review_no) {
		this.review_no = review_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public Date getWrite_date_rv() {
		return write_date_rv;
	}

	public void setWrite_date_rv(Date write_date_rv) {
		this.write_date_rv = write_date_rv;
	}

	public Date getModify_date_rv() {
		return modify_date_rv;
	}

	public void setModify_date_rv(Date modify_date_rv) {
		this.modify_date_rv = modify_date_rv;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getResv_no() {
		return resv_no;
	}

	public void setResv_no(String resv_no) {
		this.resv_no = resv_no;
	}


	public String getReview_rate() {
		return review_rate;
	}

	public void setReview_rate(String review_rate) {
		this.review_rate = review_rate;
	}
	
	
}
