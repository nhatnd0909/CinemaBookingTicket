package com.project.csm.service.customerService;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.repository.ServiceRepository;

@Service
public class ServiceService {
	@Autowired
	private ServiceRepository sRepository;

	public List<com.project.csm.model.Service> getAllService() {

		return sRepository.findAll();
	}

	public String getCurrentDate() {
		Date currentDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String formattedDate = dateFormat.format(currentDate);
		return formattedDate;
	}

	public String getTomorrowDate() {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_YEAR, 1);
		Date tomorrow = calendar.getTime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String formattedTomorrowDate = dateFormat.format(tomorrow);
		return formattedTomorrowDate;
	}

	public String getNextDayDate() {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_YEAR, 2);
		Date nextDay = calendar.getTime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String formattedNextDayDate = dateFormat.format(nextDay);
		return formattedNextDayDate;
	}
}
