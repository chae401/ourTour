package com.ourtour.tourapp.board;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
@Service
public class FileUploadLogic {
	
	public List<BoardFileDTO> uploadFiles(List<MultipartFile> multipartFiles, String path) throws IllegalStateException, IOException{		
		List<BoardFileDTO> filedtolist = new ArrayList<BoardFileDTO>();
		for(MultipartFile mtf:multipartFiles) {
			String originalFilename = mtf.getOriginalFilename();
			System.out.println(originalFilename);
			String storeFilename = createStoreFilename(originalFilename);
			System.out.println(path + File.separator + storeFilename);
			mtf.transferTo(new File(path + File.separator + storeFilename));
			filedtolist.add(new BoardFileDTO(originalFilename, storeFilename));
		}
		return filedtolist;		
	}
	
	private String createStoreFilename(String originalFilename) {
		int pos = originalFilename.lastIndexOf(".");
		String ext = originalFilename.substring(pos+1);
		String uuid = UUID.randomUUID().toString();
		return uuid+"."+ext;
	}
}
