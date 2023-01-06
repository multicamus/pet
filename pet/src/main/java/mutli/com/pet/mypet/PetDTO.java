package mutli.com.pet.mypet;
import oracle.sql.DATE;

public class PetDTO {
    private String pet_id;
    private String member_id;
    private String pet_name;
    private String pet_gender;
    private String pet_code;
    private String pet_kind;
    private DATE pet_birthdate;
    private String pet_weight;
    private String pet_size;
	private String neuter;
	private String animalhospital_name;
	private String animalhospital_addr;
	private String pet_photo;
	private String pet_note;
	private String pet_number;
	
	public PetDTO() {
		super();
	}

	public PetDTO(String pet_id, String member_id, String pet_name, String pet_gender, String pet_code, String pet_kind,
			DATE pet_birthdate, String pet_weight, String pet_size, String neuter, String animalhospital_name,
			String animalhospital_addr, String pet_photo, String pet_note, String pet_number) {
		super();
		this.pet_id = pet_id;
		this.member_id = member_id;
		this.pet_name = pet_name;
		this.pet_gender = pet_gender;
		this.pet_code = pet_code;
		this.pet_kind = pet_kind;
		this.pet_birthdate = pet_birthdate;
		this.pet_weight = pet_weight;
		this.pet_size = pet_size;
		this.neuter = neuter;
		this.animalhospital_name = animalhospital_name;
		this.animalhospital_addr = animalhospital_addr;
		this.pet_photo = pet_photo;
		this.pet_note = pet_note;
		this.pet_number = pet_number;
	}

	@Override
	public String toString() {
		return "PetDTO [pet_id=" + pet_id + ", member_id=" + member_id + ", pet_name=" + pet_name + ", pet_gender="
				+ pet_gender + ", pet_code=" + pet_code + ", pet_kind=" + pet_kind + ", pet_birthdate=" + pet_birthdate
				+ ", pet_weight=" + pet_weight + ", pet_size=" + pet_size + ", neuter=" + neuter
				+ ", animalhospital_name=" + animalhospital_name + ", animalhospital_addr=" + animalhospital_addr
				+ ", pet_photo=" + pet_photo + ", pet_note=" + pet_note + ", pet_number=" + pet_number + "]";
	}

	public String getPet_id() {
		return pet_id;
	}

	public void setPet_id(String pet_id) {
		this.pet_id = pet_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPet_name() {
		return pet_name;
	}

	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}

	public String getPet_gender() {
		return pet_gender;
	}

	public void setPet_gender(String pet_gender) {
		this.pet_gender = pet_gender;
	}

	public String getPet_code() {
		return pet_code;
	}

	public void setPet_code(String pet_code) {
		this.pet_code = pet_code;
	}

	public String getPet_kind() {
		return pet_kind;
	}

	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}

	public DATE getPet_birthdate() {
		return pet_birthdate;
	}

	public void setPet_birthdate(DATE pet_birthdate) {
		this.pet_birthdate = pet_birthdate;
	}

	public String getPet_weight() {
		return pet_weight;
	}

	public void setPet_weight(String pet_weight) {
		this.pet_weight = pet_weight;
	}

	public String getPet_size() {
		return pet_size;
	}

	public void setPet_size(String pet_size) {
		this.pet_size = pet_size;
	}

	public String getNeuter() {
		return neuter;
	}

	public void setNeuter(String neuter) {
		this.neuter = neuter;
	}

	public String getAnimalhospital_name() {
		return animalhospital_name;
	}

	public void setAnimalhospital_name(String animalhospital_name) {
		this.animalhospital_name = animalhospital_name;
	}

	public String getAnimalhospital_addr() {
		return animalhospital_addr;
	}

	public void setAnimalhospital_addr(String animalhospital_addr) {
		this.animalhospital_addr = animalhospital_addr;
	}

	public String getPet_photo() {
		return pet_photo;
	}

	public void setPet_photo(String pet_photo) {
		this.pet_photo = pet_photo;
	}

	public String getPet_note() {
		return pet_note;
	}

	public void setPet_note(String pet_note) {
		this.pet_note = pet_note;
	}

	public String getPet_number() {
		return pet_number;
	}

	public void setPet_number(String pet_number) {
		this.pet_number = pet_number;
	}
	
	
}

