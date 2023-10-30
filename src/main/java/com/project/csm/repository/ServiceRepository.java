package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Service;


@Repository
public interface ServiceRepository extends JpaRepository<Service, Long> {

}
