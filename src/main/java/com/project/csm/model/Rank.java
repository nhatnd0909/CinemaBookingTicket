package com.project.csm.model;

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
	private Long rankID;

	@Column(name = "Type")
	private String type;

	@Column(name = "Discount")
	private Double discount;

	public Rank() {
	}

	public Rank(String type, Double discount) {
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