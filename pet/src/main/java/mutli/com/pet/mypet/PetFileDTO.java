package mutli.com.pet.mypet;

public class PetFileDTO {
	private String pet_photo;
	private String originalFilename;
	private String storeFilename;

	
	public PetFileDTO(){
	}
	
	public PetFileDTO(String originalFilename, String storeFilename) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}
	
	//boardfile의 상세정보 - insert
	public PetFileDTO(String originalFilename, String storeFilename, String reviewFileno) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}
	
	//select
	public PetFileDTO(String pet_photo, String originalFilename, String storeFilename, String reviewFileno) {
		super();
		this.pet_photo = pet_photo;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}


	@Override
	public String toString() {
		return "ReviewFileDTO [review_no=" + pet_photo + ", originalFilename=" + originalFilename + ", storeFilename="
				+ storeFilename + ", reviewFileno=" +  "]";
	}
	

	public String getReview_no() {
		return pet_photo;
		
	}

	public void setReview_no(String pet_photo) {
		this.pet_photo = pet_photo;
	}


	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getStoreFilename() {
		return storeFilename;
	}
	public void setStoreFilename(String storeFilename) {
		this.storeFilename = storeFilename;
	}
}
