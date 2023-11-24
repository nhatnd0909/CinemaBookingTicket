package com.project.csm.service.customerService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Payment;
import com.project.csm.repository.PaymentRepository;

@Service
public class PaymentService {
	@Autowired
	private PaymentRepository paymentRepository;

	public Payment createNewPayment(Payment payment) {
		return paymentRepository.save(payment);
	}

	public List<Payment> getAllPayment() {
		return paymentRepository.findAll();
	}

	public boolean isSameMonth(Date date1, Date date2) {
		SimpleDateFormat monthFormat = new SimpleDateFormat("MM");
		return monthFormat.format(date1).equals(monthFormat.format(date2));
	}

	public int calculateTotalByMonth(String inputDate) {
		int totalByMonth = 0;
		List<Payment> payments = getAllPayment();
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
			Date targetDate = dateFormat.parse(inputDate);
			for (Payment payment : payments) {
				// Lấy ngày của payment
				Date paymentDate = payment.getDate();

				// So sánh tháng của ngày payment với tháng của ngày đầu vào
				if (isSameMonth(targetDate, paymentDate)) {
					totalByMonth += payment.getTotal();
				}
			}
		} catch (Exception e) {
		}
		return totalByMonth;
	}

}
