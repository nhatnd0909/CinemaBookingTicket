package com.project.csm.service.customerService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Contact;
import com.project.csm.repository.ContactRepository;

@Service
public class ContactService {
	@Autowired
	private ContactRepository contactRepository;

	public Contact createContact(Contact contact) {
		contact.setStatus("Chưa trả lời");
		return contactRepository.save(contact);
	}

	public Contact updateContact(Contact contact) {
		contact.setStatus("Đã trả lời");
		return contactRepository.save(contact);
	}

	public List<Contact> getContact() {
		List<Contact> listUnrep = getUnrepContact();
		List<Contact> listRep = getRepContact();
		for (Contact c : listRep) {
			listUnrep.add(c);
		}
		return listUnrep;
	}

	public List<Contact> getAllContact() {
		return contactRepository.findAll();
	}

	public List<Contact> getUnrepContact() {
		List<Contact> list = getAllContact();
		List<Contact> listReturn = new ArrayList<>();
		for (Contact c : list) {
			if (c.getStatus().equals("Chưa trả lời")) {
				listReturn.add(c);
			}
		}
		return listReturn;
	}

	public List<Contact> getRepContact() {
		List<Contact> list = getAllContact();
		List<Contact> listReturn = new ArrayList<>();
		for (Contact c : list) {
			if (c.getStatus().equals("Đã trả lời")) {
				listReturn.add(c);
			}
		}
		return listReturn;
	}

	public Contact getContactByID(Long idContact) {
		List<Contact> list = getAllContact();
		for (Contact c : list) {
			if (c.getContactID().compareTo(idContact) == 0) {
				return c;
			}
		}
		return null;
	}
}
