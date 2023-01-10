package multi.com.pet.resv;

import java.util.List;
<<<<<<< HEAD
=======
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mutli.com.pet.erp.SitterDTO;

@Service
public class ResvServiceImpl implements ResvService {
	ResvDAO dao;
	
	@Autowired
	public ResvServiceImpl(ResvDAO dao) {
		super();
		this.dao = dao;
	}
	
	@Override
	public List<SitterDTO> directlist(String gender, String size, String code, String shortAddr) {
		if(gender.equals("A")) {
			return dao.directlistAllgender(size, code, shortAddr);
		}else {
			System.out.println("서비스단code"+code);
			return dao.directlistBygender(gender, size, code, shortAddr);
		}
	}
	
	@Override
	public SitterDTO readSitter(String sitter_id) {
		return dao.readSitter(sitter_id);
	}
>>>>>>> refs/remotes/origin/main-old

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mutli.com.pet.erp.SitterDTO;

@Service
public class ResvServiceImpl implements ResvService {
	ResvDAO dao;
	@Autowired
	public ResvServiceImpl(ResvDAO dao) {
		super();
		this.dao = dao;
	}
	@Override
	public List<SitterDTO> directlist(String gender, String size, String code, String shortAddr) {
		if(gender.equals("A")) {
			return dao.directlistAllgender(size, code, shortAddr);
		}else {
			System.out.println("서비스단code"+code);
			return dao.directlistBygender(gender, size, code, shortAddr);
		}
		
	}
	@Override
	public SitterDTO readSitter(String sitter_id) {
		return dao.readSitter(sitter_id);
	}
	@Override
	public int insert(ResvDTO resvdto) {
		return dao.insert(resvdto);
	}
	
	
}
