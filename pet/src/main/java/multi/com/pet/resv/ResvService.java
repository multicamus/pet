package multi.com.pet.resv;

import java.util.List;

import mutli.com.pet.erp.SitterDTO;

public interface ResvService {
	List<SitterDTO> directlist(String gender, String size, String code, String shortAddr);
	SitterDTO readSitter(String sitter_id);
}
