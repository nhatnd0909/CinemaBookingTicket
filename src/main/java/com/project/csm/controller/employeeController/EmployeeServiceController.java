package com.project.csm.controller.employeeController;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.csm.model.Rank;
import com.project.csm.model.Service;
import com.project.csm.service.employeeService.employeeServiceService;

import jakarta.persistence.criteria.Path;

@Controller
public class EmployeeServiceController {

	@Autowired 
	private employeeServiceService employeeServiceService ; 
	
	
	@GetMapping("/employee/service")
	public String showEmployeeService(Model model ) {
		List <Service> services   = employeeServiceService.getAllServices();
		model.addAttribute("services", services);
		System.out.println(services);
		return "/employee/service/serviceDashboard"; 
	}
	
	@GetMapping("/employee/service/create")
	public String getCreateEmployeeService() {
		return "/employee/service/createService";
	}
	
	@PostMapping("/employee/service/create")
	public String postCreateEmployeeService(@ModelAttribute Service service, @RequestParam("imageFile") MultipartFile imageFile) {
		try {
			employeeServiceService.createService(service, imageFile);
			 return "redirect:/employee/service"; 
        } catch (IOException e) {
            return "createServiceForm";
        }
    }
	

	
	@GetMapping("/employee/service/update")
	public String getUpdateEmployeeService() {
		return "/employee/service/updateService";
	}
	
	
	@PostMapping("/employee/service/update")
	public String postUpdateEmployeeService() {
			return "redirect:/employee/service";
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
