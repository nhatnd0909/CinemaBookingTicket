package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long>{

}
