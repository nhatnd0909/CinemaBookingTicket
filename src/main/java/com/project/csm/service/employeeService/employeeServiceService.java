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

	public com.project.csm.model.Service getServiceById(Long serviceID) {
		 return serviceRepository.findById(serviceID).orElse(null);
	}
	
	public void createService(com.project.csm.model.Service service, MultipartFile imageFile) throws IOException {
	    processImage(service, imageFile);
	    serviceRepository.save(service);
	}

	public void updateService(com.project.csm.model.Service service ) {
        serviceRepository.save(service);
    }

	public void deleteServiceById(Long serviceID) {
		serviceRepository.deleteById(serviceID);
	}
	
	public void processImage(com.project.csm.model.Service service, MultipartFile imageFile) throws IOException {
	    if (imageFile != null && !imageFile.isEmpty()) {
	        String fileName = imageFile.getOriginalFilename();
	        service.setUrlImageService(fileName);
	    }
	}


	

}
	

