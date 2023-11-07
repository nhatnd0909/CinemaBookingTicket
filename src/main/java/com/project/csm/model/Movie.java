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
	private Long movieID;

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

	@Column(name = "Description", columnDefinition = "varchar(max)")
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

	public Movie() {
	}

	public Movie(String name, String actor, String director, int duration, String language, String description,
			String image, Date startDate, Date endDate, String urlTrailer) {
		this.name = name;
		this.actor = actor;
		this.director = director;
		this.duration = duration;
		this.language = language;
		this.description = description;
		this.image = image;
		this.startDate = startDate;
		this.endDate = endDate;
		this.urlTrailer = urlTrailer;
	}

	public Movie(String name, String actor, String director, int duration, String language, String description,
			String image, Date startDate, Date endDate, String urlTrailer, Genre genre, Admin admin) {
		this.name = name;
		this.actor = actor;
		this.director = director;
		this.duration = duration;
		this.language = language;
		this.description = description;
		this.image = image;
		this.startDate = startDate;
		this.endDate = endDate;
		this.urlTrailer = urlTrailer;
		this.genre = genre;
		this.admin = admin;
	}

	public Long getMovieID() {
		return movieID;
	}

	public void setMovieID(Long movieID) {
		this.movieID = movieID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getUrlTrailer() {
		return urlTrailer;
	}

	public void setUrlTrailer(String urlTrailer) {
		this.urlTrailer = urlTrailer;
	}

	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Movie [movieID=" + movieID + ", name=" + name + ", actor=" + actor + ", director=" + director
				+ ", duration=" + duration + ", language=" + language + ", description=" + description + ", image="
				+ image + ", startDate=" + startDate + ", endDate=" + endDate + ", urlTrailer=" + urlTrailer
				+ ", genre=" + genre + ", admin=" + admin + "]";
	}

}