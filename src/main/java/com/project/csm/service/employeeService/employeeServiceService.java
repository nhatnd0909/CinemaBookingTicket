package com.project.csm.service.employeeService;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.csm.model.Rank;
import com.project.csm.repository.ServiceRepository;


@Service
public class employeeServiceService {
	
	@Autowired
	private ServiceRepository serviceRepository ;

	public List<com.project.csm.model.Service> getAllServices() {
		return serviceRepository.findAll();
	} 
	
	public void createService(com.project.csm.model.Service service, MultipartFile imageFile) throws IOException {
	    if (imageFile != null && !imageFile.isEmpty()) {
	        String fileName = generateRandomFileName(imageFile);
	        String uploadDir = "src/main/resources/static/admin_assets/assets/images/serivce/";
	        Path filePath = Paths.get(uploadDir, fileName);
	        
	        try (InputStream inputStream = imageFile.getInputStream()) {
	            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
	            service.setUrlImageService(fileName);
	        }
	    }
	    serviceRepository.save(service);
	}
	
	private String generateRandomFileName(MultipartFile file) {
	    String originalFileName = file.getOriginalFilename();
	    String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
	    String randomSuffix = String.format("%04d", (int) (Math.random() * 10000));
	    String newFileName = "Service" + randomSuffix + extension;
	    return newFileName;
	}
	
	
	public com.project.csm.model.Service getServiceById(Long serviceID) {
		 return serviceRepository.findById(serviceID).orElse(null);
	}
	
	public void deleteServiceById(Long serviceID) {
		serviceRepository.deleteById(serviceID);
	}

}
	

