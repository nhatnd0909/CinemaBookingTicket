package com.project.csm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.csm.model.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

}
