package com.project.csm.model;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Service")
public class Service {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ServiceID")
    private int serviceID;
    
    @Column(name = "Name")
    private String name;
    
    @Column(name = "Price")
    private BigDecimal price;
    
    @ManyToOne
    @JoinColumn(name = "EmployeeID")
    private Employee employee;
}