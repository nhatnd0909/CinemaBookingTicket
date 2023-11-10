package com.project.csm.model;

import java.math.BigDecimal;
import java.sql.Time;
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
	private Long showID;

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

	@Column(name = "DayTime")
	private Date dayTime;

	@Column(name = "StartTime")
	private Time startTime;

	@Column(name = "EndTime")
	private Time endTime;

	public Show() {
	}

	public Show(Employee employee, Movie movie, TheaterRoom theaterRoom, BigDecimal price, Date dayTime, Time startTime,
			Time endTime) {
		super();
		this.employee = employee;
		this.movie = movie;
		this.theaterRoom = theaterRoom;
		this.price = price;
		this.dayTime = dayTime;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public Show(Long showID, Employee employee, Movie movie, TheaterRoom theaterRoom, BigDecimal price, Date dayTime,
			Time startTime, Time endTime) {
		super();
		this.showID = showID;
		this.employee = employee;
		this.movie = movie;
		this.theaterRoom = theaterRoom;
		this.price = price;
		this.dayTime = dayTime;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public Long getShowID() {
		return showID;
	}

	public void setShowID(Long showID) {
		this.showID = showID;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public TheaterRoom getTheaterRoom() {
		return theaterRoom;
	}

	public void setTheaterRoom(TheaterRoom theaterRoom) {
		this.theaterRoom = theaterRoom;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Date getDayTime() {
		return dayTime;
	}

	public void setDayTime(Date dayTime) {
		this.dayTime = dayTime;
	}

	public Time getStartTime() {
		return startTime;
	}

	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}

	public Time getEndTime() {
		return endTime;
	}

	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return "Show [showID=" + showID + ", employee=" + employee + ", movie=" + movie + ", theaterRoom=" + theaterRoom
				+ ", price=" + price + ", dayTime=" + dayTime + ", startTime=" + startTime + ", endTime=" + endTime
				+ "]";
	}

}