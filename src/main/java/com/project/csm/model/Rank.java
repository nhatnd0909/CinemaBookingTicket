package com.project.csm.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Rank {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long rankID;

	private String type;
	private Double discount;

	public Rank() {
	}

	public Rank(String type) {
		this.type = type;
	}

	public Rank(String type, Double discount) {
		this.type = type;
		this.discount = discount;
	}

	public Rank(Long rankID, String type, Double discount) {
		super();
		this.rankID = rankID;
		this.type = type;
		this.discount = discount;
	}

	public Long getRankID() {
		return rankID;
	}

	public void setRankID(Long rankID) {
		this.rankID = rankID;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "Rank [rankID=" + rankID + ", type=" + type + ", discount=" + discount + "]";
	}

}