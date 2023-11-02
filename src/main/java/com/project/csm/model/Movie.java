package com.project.csm.model;

import java.util.Date;
import java.util.Objects;

import org.springframework.format.annotation.DateTimeFormat;

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
	
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "StartDate")
	private Date startDate;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "EndDate")
	private Date endDate;

	@Column(name = "URLTrailer")
	private String urlTrailer;
	
	@Column(name = "status")
	private String status;

	@ManyToOne
	@JoinColumn(name = "GenreID")
	private Genre genre;

	@ManyToOne
	@JoinColumn(name = "AdminID")
	private Admin admin;

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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
	public int hashCode() {
		return Objects.hash(actor, admin, description, director, duration, endDate, genre, image, language, movieID,
				name, startDate, status, urlTrailer);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Movie other = (Movie) obj;
		return Objects.equals(actor, other.actor) && Objects.equals(admin, other.admin)
				&& Objects.equals(description, other.description) && Objects.equals(director, other.director)
				&& duration == other.duration && Objects.equals(endDate, other.endDate)
				&& Objects.equals(genre, other.genre) && Objects.equals(image, other.image)
				&& Objects.equals(language, other.language) && Objects.equals(movieID, other.movieID)
				&& Objects.equals(name, other.name) && Objects.equals(startDate, other.startDate)
				&& Objects.equals(status, other.status) && Objects.equals(urlTrailer, other.urlTrailer);
	}

	@Override
	public String toString() {
		return "Movie [movieID=" + movieID + ", name=" + name + ", actor=" + actor + ", director=" + director
				+ ", duration=" + duration + ", language=" + language + ", description=" + description + ", image="
				+ image + ", startDate=" + startDate + ", endDate=" + endDate + ", urlTrailer=" + urlTrailer
				+ ", status=" + status + ", genre=" + genre + ", admin=" + admin + "]";
	}
	
	
}