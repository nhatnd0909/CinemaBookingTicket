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
@Table(name = "TheaterRoom")
public class TheaterRoom {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "RoomID")
	private Long roomID;

	@Column(name = "Name")
	private String name;

	@Column(name = "NumOfSeat")
	private int numOfSeat;

	@ManyToOne
	@JoinColumn(name = "TheaterID")
	private Theater theater;

	public TheaterRoom() {
	}

	public TheaterRoom(Long roomID, String name, int numOfSeat, Theater theater) {
		super();
		this.roomID = roomID;
		this.name = name;
		this.numOfSeat = numOfSeat;
		this.theater = theater;
	}

	public Long getRoomID() {
		return roomID;
	}

	public void setRoomID(Long roomID) {
		this.roomID = roomID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumOfSeat() {
		return numOfSeat;
	}

	public void setNumOfSeat(int numOfSeat) {
		this.numOfSeat = numOfSeat;
	}

	public Theater getTheater() {
		return theater;
	}

	public void setTheater(Theater theater) {
		this.theater = theater;
	}

	@Override
	public String toString() {
		return "TheaterRoom [roomID=" + roomID + ", name=" + name + ", numOfSeat=" + numOfSeat + ", theater=" + theater
				+ "]";
	}

	
}
