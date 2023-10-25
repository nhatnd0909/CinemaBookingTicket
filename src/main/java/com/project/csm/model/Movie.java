package com.project.csm.model;

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
@Table(name = "Movie")
public class Movie {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MovieID")
	private int movieID;

	@Column(name = "Name")
	private String name;

	@Column(name = "Actor")
	private String actor;

	@Column(name = "Director")
	private String director;

	@Column(name = "Duration")
	private int duration;

	@Column(name = "Language")
	private String language;

	@Column(name = "Description", columnDefinition = "NVARCHAR(MAX)")
	private String description;

	@Column(name = "Image")
	private String image;

	@Column(name = "StartDate")
	private Date startDate;

	@Column(name = "EndDate")
	private Date endDate;

	@Column(name = "URLTrailer")
	private String urlTrailer;

	@ManyToOne
	@JoinColumn(name = "GenreID")
	private Genre genre;

	@ManyToOne
	@JoinColumn(name = "AdminID")
	private Admin admin;
}