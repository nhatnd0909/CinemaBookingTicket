package com.project.csm.service.employeeService;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Show;
import com.project.csm.repository.ShowRepository;

@Service
public class employeeShowMovie {

	@Autowired
	private ShowRepository showRepository;

	public List<Show> getAllShows() {
		return showRepository.findAll();
	}

	public Show crateNewShow(Show show) {
		return showRepository.save(show);
	}

	public String getDate(String option) {
		LocalDate currentDate = LocalDate.now();
		LocalDate resultDate;

		switch (option) {
		case "0":
			resultDate = currentDate;
			break;
		case "1":
			resultDate = currentDate.plusDays(1);
			break;
		case "2":
			resultDate = currentDate.plusDays(2);
			break;
		default:
			throw new IllegalArgumentException("Invalid option. Use '0', '1', or '2'.");
		}

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		return resultDate.format(formatter);
	}

	public Date parseDate(String dateString) throws ParseException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		return formatter.parse(dateString);
	}

	public Time parseStringToTime(String timeString) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
			Date date = sdf.parse(timeString);
			return new Time(date.getTime());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public Show getShowByDate(String dateInput, String timeStartInput, Long idRoom) {
		List<Show> list = getAllShows();

		for (Show s : list) {
			String date = s.getDayTime().toString().split(" ")[0];
			String timeStart = s.getStartTime().toString();
			if (date.equals(dateInput) && timeStart.equals(timeStartInput)
					&& s.getTheaterRoom().getRoomID() == idRoom) {
				return s;
			}

		}
		return null;
	}

	public Date parseDateString(String dateString) throws ParseException {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		Date parsedDate = dateFormat.parse(dateString);
		return parsedDate;
	}

	public List<Show> getAllShowByTheaterDateMovie(String date, String theater, String nameMovie)
			throws ParseException {
		List<Show> listShow = getAllShows();
		List<Show> listReturn = new ArrayList<>();
		for (Show s : listShow) {
			Date dateCheck = parseDateString(date);
			if (s.getDayTime().compareTo(dateCheck) == 0 && s.getEmployee().getTheater().getName().equals(theater)
					&& s.getMovie().getName().equals(nameMovie)) {
				listReturn.add(s);
			}
		}
		return listReturn;
	}

	public Show getShowById(Long showID) {
		List<Show> list = getAllShows();
		for (Show s : list) {
			if (s.getShowID().compareTo(showID) == 0) {
				return s;
			}
		}
		return null;
	}
}
