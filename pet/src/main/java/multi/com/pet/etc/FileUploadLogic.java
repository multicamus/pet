package multi.com.pet.etc;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mutli.com.pet.erp.SitterImgDTO;

@Service
public class FileUploadLogic {
	public SitterImgDTO uploadFile(String sitter, MultipartFile file, String path) throws IllegalStateException, IOException{
		String originalFileName = file.getOriginalFilename();
		System.out.println(originalFileName);
		
		String storeFileName = createStoreFileName(originalFileName);
		System.out.println(storeFileName);
		
		file.transferTo(new File(path + File.separator + storeFileName));
		System.out.println(file);
		
		SitterImgDTO Img  = new SitterImgDTO(sitter, originalFileName, storeFileName);
		
		return Img;
	}

	private String createStoreFileName(String originalFileName) {
		int pos = originalFileName.lastIndexOf(".");
		String ext = originalFileName.substring(pos + 1);
		String uuId = UUID.randomUUID().toString();
		return uuId + "." + ext;
	}
	

}
