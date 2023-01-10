package multi.com.pet.resv;

import java.util.List;

<<<<<<< HEAD
import org.springframework.stereotype.Service;

import mutli.com.pet.erp.SitterDTO;
import mutli.com.pet.mypet.PetDTO;


public interface ResvService {
	List<SitterDTO> directlist(String gender, String size, String code, String shortAddr);
	SitterDTO readSitter(String sitter_id);
	int insert(ResvDTO resvdto);
	
=======
import mutli.com.pet.erp.SitterDTO;

public interface ResvService {
	List<SitterDTO> directlist(String gender, String size, String code, String shortAddr);
	SitterDTO readSitter(String sitter_id);
>>>>>>> refs/remotes/origin/main-old
}
