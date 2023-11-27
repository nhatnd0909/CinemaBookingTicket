package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Payment;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long>{

}
