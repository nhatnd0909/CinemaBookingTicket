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
	private int roomID;

	@Column(name = "Name")
	private String name;

	@Column(name = "NumOfSeat")
	private int numOfSeat;

	@ManyToOne
	@JoinColumn(name = "TheaterID")
	private Theater theater;

}
