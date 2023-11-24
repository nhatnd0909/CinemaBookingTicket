package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Long>{

}
