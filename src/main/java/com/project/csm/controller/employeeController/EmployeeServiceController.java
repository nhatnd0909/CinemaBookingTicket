package com.project.csm.controller.employeeController;

import java.io.IOException;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.project.csm.model.Service;
import com.project.csm.service.employeeService.employeeServiceService;

@Controller
public class EmployeeServiceController {

	@Autowired
	private employeeServiceService employeeServiceService;

	@GetMapping("/employee/service")
	public String showEmployeeService(Model model) {
		List<Service> services = employeeServiceService.getAllServices();
		model.addAttribute("services", services);
		System.out.println(services);
		return "/employee/service/serviceDashboard";
	}

	@GetMapping("/employee/service/create")
	public String getCreateEmployeeService() {
		return "/employee/service/createService";
	}

	@PostMapping("/employee/service/create")
	public String postCreateEmployeeService(@ModelAttribute Service service,
	        @RequestParam("imageFile") MultipartFile imageFile) {
	    try {
	        employeeServiceService.createService(service, imageFile);
	        return "redirect:/employee/service";
	    } catch (IOException e) {
	        return "/employee/service/createService";
	    }
	}


	@GetMapping("/employee/service/update/{serviceID}")
	public String getUpdateEmployeeService(@PathVariable Long serviceID, Model model) {
		Service services = employeeServiceService.getServiceById(serviceID);
		model.addAttribute("services", services);
		String imageUrl = services.getUrlImageService();
		model.addAttribute("imageUrl", imageUrl);
		System.out.println(imageUrl);
		return "/employee/service/updateService";
	}

	@PostMapping("/employee/service/update/{serviceID}")
	public String postUpdateEmployeeService(@PathVariable Long serviceID, @ModelAttribute Service updatedService,
			@RequestParam("imageFile") MultipartFile imageFile) {
		try {
			Service existingService = employeeServiceService.getServiceById(serviceID);
			existingService.setName(updatedService.getName());
			existingService.setSize(updatedService.getSize());
			existingService.setPrice(updatedService.getPrice());
			if (imageFile != null && !imageFile.isEmpty()) {
				employeeServiceService.processImage(existingService, imageFile);
			}
			employeeServiceService.updateService(existingService);
			return "redirect:/employee/service";
		} catch (Exception e) {
			return "updateServiceForm";
		}
	}

	@PostMapping("/deleteService")
	@ResponseBody
	public ResponseEntity<String> deleteService(@RequestParam("serviceID") Long serviceID) {
		Service service = employeeServiceService.getServiceById(serviceID);
		if (service != null) {
			employeeServiceService.deleteServiceById(serviceID);
			return new ResponseEntity<>("Xóa thành công", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Không tìm thấy nhân viên", HttpStatus.NOT_FOUND);
		}
	}
}
