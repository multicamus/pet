package mutli.com.pet.mypet;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
@Service
public class FileUploadLogic2 {
	//파일을 업로드한 후 이 정보를 BoardFileDTO로 변환해서 리턴
	public PetFileDTO uploadFile(MultipartFile multipartFile, String path) throws IllegalStateException, IOException{
		PetFileDTO filed = new PetFileDTO();
			if(!multipartFile.isEmpty()) {
				//클라이언트가 업로드한 파일명 
				String originalFilename = multipartFile.getOriginalFilename(); 
				//서버에서 식별할 수 있도록 파일명을 변경
				String storeFilename = createStoreFilename(originalFilename); //uuid 
				
				//File객체를 실제 경로에 저장
				multipartFile.transferTo(new File(path+File.separator+storeFilename));
				filed.setOriginalFilename(originalFilename);
				filed.setStoreFilename(storeFilename);
			}
		return filed;
	}
	//uploadFile메소드를 작성
	// -> 한 개의 파일만 업로드 할 수 있도록 정의
	// -> uploadFiles메소드에서 작성한 uploadFile메소드를 호출해서 작업하기
	
	//클라이언트가 입력한 파일명을 중복없는 이름으로 변경
	//UUID - 32자리의 16 진수로 표기
	private String createStoreFilename(String originalFilename) {
		int pos = originalFilename.lastIndexOf(".");
		String ext = originalFilename.substring(pos+1);
		String uuid = UUID.randomUUID().toString();
		return uuid+"."+ext;
	}
}






