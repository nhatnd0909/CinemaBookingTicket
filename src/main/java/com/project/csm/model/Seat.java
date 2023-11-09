package com.project.csm.model;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Seat")
public class Seat {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SeatID")
	private Long seatID;

	@Column(name = "Rows")
	private String row;

	@Column(name = "Columns")
	private String column;

	@Column(name = "Name")
	private String name;

	@Column(name = "Type")
	private String type;

	@Column(name = "Price")
	private BigDecimal price;

	public Seat() {
		super();
	}

	public Seat(String row, String column, String name, String type, BigDecimal price) {
		super();
		this.row = row;
		this.column = column;
		this.name = name;
		this.type = type;
		this.price = price;
	}

	public Seat(Long seatID, String row, String column, String name, String type, BigDecimal price) {
		super();
		this.seatID = seatID;
		this.row = row;
		this.column = column;
		this.name = name;
		this.type = type;
		this.price = price;
	}

	public Long getSeatID() {
		return seatID;
	}

	public void setSeatID(Long seatID) {
		this.seatID = seatID;
	}

	public String getRow() {
		return row;
	}

	public void setRow(String row) {
		this.row = row;
	}

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Seat [seatID=" + seatID + ", row=" + row + ", column=" + column + ", name=" + name + ", type=" + type
				+ ", price=" + price + "]";
	}

}
