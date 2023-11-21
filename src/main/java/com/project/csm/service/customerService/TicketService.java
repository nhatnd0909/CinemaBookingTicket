package com.project.csm.service.customerService;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Ticket;
import com.project.csm.repository.TicketRepository;

@Service
public class TicketService {
	@Autowired
	private TicketRepository tRepository;

	public Ticket createNewTicket(Ticket ticket) {
		return tRepository.save(ticket);
	}

	public List<Ticket> getAllTicket() {
		return tRepository.findAll();
	}

	public String createIDTicket() {
		List<Ticket> list = getAllTicket();
		String ticketID = generateRandomNumberString();
		for (Ticket t : list) {
			if (t.getTicketID() == ticketID) {
				ticketID = generateRandomNumberString();
			}
		}
		return ticketID;
	}

	public String generateRandomNumberString() {
		int length = 8;
		Random random = new Random();
		StringBuilder stringBuilder = new StringBuilder();
		for (int i = 0; i < length; i++) {
			int digit = random.nextInt(10);
			stringBuilder.append(digit);
		}
		return stringBuilder.toString();
	}

	public List<String> getTicketByRoomID(Long roomID, Long showID) {
		List<Ticket> list = getAllTicket();
		List<String> listReturn = new ArrayList<>();
		for (Ticket t : list) {
			if (t.getShow().getTheaterRoom().getRoomID().compareTo(roomID) == 0
					&& t.getShow().getShowID().compareTo(showID) == 0) {
				String[] listSeat = t.getListSeat().split(",");
				for (int i = 0; i < listSeat.length; i++) {
					listReturn.add(listSeat[i]);
				}
			}
		}
		return listReturn;
	}

	public List<Ticket> getAllTicketByIdCustomer(Long idCus) {
		List<Ticket> list = getAllTicket();
		List<Ticket> returnList = new ArrayList<>();
		for (Ticket t : list) {
			if (t.getCustomer().getCustomerID().compareTo(idCus) == 0) {
				returnList.add(t);
			}
		}
		return returnList;
	}
}
