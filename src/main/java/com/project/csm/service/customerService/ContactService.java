package com.project.csm.service.customerService;

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
		return contactRepository.save(contact);
	}

	public List<Contact> getAllContact() {
		return contactRepository.findAll();
	}

}
