package com.project.csm.service.employeeService;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
	public Show getShowByDate(String dateInput,String timeStartInput) {
		List<Show> list = getAllShows();

		for (Show s : list) {
			String date = s.getDayTime().toString().split(" ")[0];
			String timeStart = s.getStartTime().toString();
			if (date.equals(dateInput)&&timeStart.equals(timeStartInput)) {
				return s;
			}

		}
		return null;
	}
	
}
