package multi.com.pet.resv;

import java.util.List;

import mutli.com.pet.erp.SitterDTO;

public interface ResvDAO {
	List<SitterDTO> directlistAllgender(String size, String code, String shortAddr);
	List<SitterDTO> directlistBygender(String gender, String size, String code, String shortAddr);
	SitterDTO readSitter(String sitter_id);
}
