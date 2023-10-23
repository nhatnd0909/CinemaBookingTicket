package com.project.csm.model;

import java.math.BigDecimal;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Show")
public class Show {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ShowID")
	private int showID;

	@ManyToOne
	@JoinColumn(name = "EmployeeID")
	private Employee employee;

	@ManyToOne
	@JoinColumn(name = "MovieID")
	private Movie movie;

	@ManyToOne
	@JoinColumn(name = "RoomID")
	private TheaterRoom theaterRoom;

	@Column(name = "Price")
	private BigDecimal price;

	@Column(name = "StartTime")
	private Date startTime;

}