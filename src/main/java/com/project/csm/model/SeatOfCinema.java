package com.project.csm.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "SeatOfCinema")
public class SeatOfCinema {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SOCID")
	private int socID;

	@ManyToOne
	@JoinColumn(name = "RoomID")
	private TheaterRoom theaterRoom;

	@ManyToOne
	@JoinColumn(name = "SeatID")
	private Seat seat;

}