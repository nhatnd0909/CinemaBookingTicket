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
@Table(name = "Theater")
public class Theater {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "TheaterID")
	private int theaterID;

	@Column(name = "Name")
	private String name;

	@Column(name = "Address")
	private String address;

	@Column(name = "NumCinemaRoom")
	private int numCinemaRoom;

	@ManyToOne
	@JoinColumn(name = "AdminID")
	private Admin admin;

	public Theater() {
		super();
	}

	public Theater(int theaterID, String name, String address, int numCinemaRoom, Admin admin) {
		super();
		this.theaterID = theaterID;
		this.name = name;
		this.address = address;
		this.numCinemaRoom = numCinemaRoom;
		this.admin = admin;
	}

	public int getTheaterID() {
		return theaterID;
	}

	public void setTheaterID(int theaterID) {
		this.theaterID = theaterID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getNumCinemaRoom() {
		return numCinemaRoom;
	}

	public void setNumCinemaRoom(int numCinemaRoom) {
		this.numCinemaRoom = numCinemaRoom;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Theater [theaterID=" + theaterID + ", name=" + name + ", address=" + address + ", numCinemaRoom="
				+ numCinemaRoom + ", admin=" + admin + "]";
	}
	
}
