package com.project.csm.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.csm.model.Rank;
import com.project.csm.repository.Rankrepository;

@Service
public class RankService {
	@Autowired
	private Rankrepository rankRepository;

	// add new Rank
	public Rank addRank() {
		Rank rank = new Rank("Bronze", 0.0);
		return rankRepository.save(rank);
	}

	
	public Rank updateRankByID(Long id, String type) {
        Optional<Rank> optionalRank = rankRepository.findById(id);

        if (optionalRank.isPresent()) {
            Rank rank = optionalRank.get();
            switch (type) {
                case "Silver":
                    rank.setType(type);
                    rank.setDiscount(0.02);
                    break;
                case "Gold":
                    rank.setType(type);
                    rank.setDiscount(0.05);
                    break;
                case "Platinum":
                    rank.setType(type);
                    rank.setDiscount(0.07);
                    break;
                case "Diamond":
                    rank.setType(type);
                    rank.setDiscount(0.1);
                    break;
                default:
                    // Do nothing for other types
                    break;
            }

            return rankRepository.save(rank);
        }

        return null; // Rank with given ID not found
    }
	
	
}
