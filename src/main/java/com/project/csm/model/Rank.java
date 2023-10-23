package com.project.csm.model;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Rank")
public class Rank {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "RankID")
	private int rankID;

	@Column(name = "Type")
	private String type;
	
	@Column(name = "Discount")
    private BigDecimal discount;

	
}