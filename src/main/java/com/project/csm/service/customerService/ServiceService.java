package com.project.csm.service.customerService;

import java.math.BigDecimal;
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

	public String getFutureDate(int numberOfDays) {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_YEAR, numberOfDays);
		Date futureDate = calendar.getTime();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String formattedFutureDate = dateFormat.format(futureDate);
		return formattedFutureDate;
	}

	public com.project.csm.model.Service getServiceByName(String name) {
		List<com.project.csm.model.Service> list = getAllService();
		for (com.project.csm.model.Service s : list) {
			if (s.getName().equals(name)) {
				return s;
			}
		}
		return null;
	}

	public BigDecimal multiplyIntByBigDecimal(int intValue, BigDecimal bigDecimalValue) {
		return new BigDecimal(intValue).multiply(bigDecimalValue);
	}
	
}
