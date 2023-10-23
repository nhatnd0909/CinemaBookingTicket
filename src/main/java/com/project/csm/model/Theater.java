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
}
