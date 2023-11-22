package com.project.csm.service.customerService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Customer;
import com.project.csm.model.Rank;
import com.project.csm.repository.RankRepository;

@Service
public class RankService {
	@Autowired
	private RankRepository rankRepository;

	public void addNewRank() {
		Rank rank1 = new Rank("Bronze", 0.00);
		Rank rank2 = new Rank("Silver", 0.02);
		Rank rank3 = new Rank("Gold", 0.05);
		Rank rank4 = new Rank("Platinum", 0.07);
		Rank rank5 = new Rank("Diamon", 0.1);
		rankRepository.save(rank1);
		rankRepository.save(rank2);
		rankRepository.save(rank3);
		rankRepository.save(rank4);
		rankRepository.save(rank5);
//		return rankRepository.save(rank);
	}

	public Rank getRankByID(Long rankID) {
		Optional<Rank> optionalRank = rankRepository.findById(rankID);

		if (optionalRank.isPresent()) {
			return optionalRank.get();
		} else {
			throw new RuntimeException("Rank not found with ID: " + rankID);
		}
	}

	public List<Rank> getAll() {
		return rankRepository.findAll();
	}

	public Rank getRankByTime(int newTimes) {
		Rank rank = getRankByID(1L);
		if (newTimes > 70) {
			rank = getRankByID(6L);
		} else if (newTimes > 50) {
			rank = getRankByID(4L);
		} else if (newTimes > 30) {
			rank = getRankByID(3L);
		} else if (newTimes > 10) {
			rank = getRankByID(2L);
		} else {
		}
		return rank;
	}

	public void updateRank(Customer customer, int newTimes) {
		Rank rank = getRankByID(1L);
		if (newTimes > 70) {
			rank = getRankByID(6L);
		} else if (newTimes > 50) {
			rank = getRankByID(4L);
		} else if (newTimes > 30) {
			rank = getRankByID(3L);
		} else if (newTimes > 10) {
			rank = getRankByID(2L);
		} else {
		}
		customer.setRank(rank);
	}
}
