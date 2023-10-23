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
@Table(name = "[Order]") // Because "Order" is a reserved keyword in SQL
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "OrderID")
    private Long orderID;
    
    @ManyToOne
    @JoinColumn(name = "ServiceID")
    private Service service;
    
    @Column(name = "Amount")
    private int amount;
    
    @Column(name = "TotalPrice")
    private BigDecimal totalPrice;
}
