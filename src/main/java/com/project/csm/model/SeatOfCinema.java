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
	private Long socID;

	@ManyToOne
	@JoinColumn(name = "RoomID")
	private TheaterRoom theaterRoom;

	@ManyToOne
	@JoinColumn(name = "SeatID")
	private Seat seat;

	public SeatOfCinema() {
		super();
	}

	public SeatOfCinema(Long socID, TheaterRoom theaterRoom, Seat seat) {
		this.socID = socID;
		this.theaterRoom = theaterRoom;
		this.seat = seat;
	}

	public SeatOfCinema(TheaterRoom theaterRoom, Seat seat) {
		super();
		this.theaterRoom = theaterRoom;
		this.seat = seat;
	}

	public Long getSocID() {
		return socID;
	}

	public void setSocID(Long socID) {
		this.socID = socID;
	}

	public TheaterRoom getTheaterRoom() {
		return theaterRoom;
	}

	public void setTheaterRoom(TheaterRoom theaterRoom) {
		this.theaterRoom = theaterRoom;
	}

	public Seat getSeat() {
		return seat;
	}

	public void setSeat(Seat seat) {
		this.seat = seat;
	}

	@Override
	public String toString() {
		return "SeatOfCinema [socID=" + socID + ", theaterRoom=" + theaterRoom + ", seat=" + seat + "]";
	}

}